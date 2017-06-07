# frozen_string_literal: true

require 'pry'

# ListItemsController Class
class ListItemsController < ProtectedController
  before_action :set_list
  before_action :set_list_item, only: %i[show update destroy]

  # GET /list_items
  def index
    @list_items = @list.list_items.all
    render json: @list_items
  end

  # GET /list_items/1
  def show
    @list_item = @list.list_items.find(params[:id])
    render json: @list_item
  end

  # POST list_items
  def create
    @list_item = @list.list_items.build(list_item_params)
    if @list_item.save
      render json: @list_item, status: :created
    else
      render json: @list_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /list_items/1
  # def update
    # @list_item = @list.list_items.find(params[:id])
    #
    # if @list_item.update(list_item_params)
    #   head :no_content
    # else
    #   render json: @list_item.errors, status: :unprocessable_entity
    # end
    # @list_item = @list.list_items.update(list_item_params[:id])
    # # @list_item = @list.list_items.find(params[:id])
    # if @list_item
    #  render json: @list_item
      # head :no_content
    # else
    #   render json: @list_item.errors.to_a, status: :unprocessable_entity
    # end
  # def update
  #   @list_item = List_item.joins(:list).where(lists: {user_id: current_user.id}).find(params[:id])
  #   # @task = List.joins(:tasks).where(tasks: {id: params[:id]}, lists: {user_id: current_user.id})
  #
  #   if @list_item.update_attributes(list_item_params)
  #     render json: @list_item
  #   else
  #     render json: @list_item.errors.to_a, status: :unprocessable_entity
  #   end
  # end

  # DELETE /list_items/1
  def destroy
    @list.list_items.find(params[:id]).destroy
    # @list_item = @list.list_items.find(params[:id])
    # if @list.list_items.find(params[:id]).destroy
    #   head :no_content
    #   render json: { id: params[:id] }
    # else
    #   render json: { id: @list.list_items.find(params[:id]) }, status: :unprocessable_entity
    # end
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_list
    @list = current_user.lists.find(params[:list_id])
  end

  def set_list_item
    @list_item = @list.list_items.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def list_item_params
    params.require(:list_item).permit(:list_item_name, :list_item_category, :list_item_status, :list_item_reminder, :list_item_reminder_date)
  end
end
