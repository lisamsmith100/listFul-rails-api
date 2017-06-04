# frozen_string_literal: true

class ListItemsController < ProtectedController
  before_action :set_list_item, only: [:show, :update, :destroy]

  # GET /list_items
  def index
    @list_items = current_user.list_items.all
    render json: @list_items
  end

  # GET /list_items/1
  def show
    @list_item = current_user.list_item.all
    render json: @list_item
  end

  # POST /list_items
  def create
    @list_item = current_user.list_item.build(entry_params)

    if @list_item.save
      render json: @list_item, status: :created, location: @list_item
    else
      render json: @list_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /list_items/1
  def update
    if @list_item.update(list_item_params)
      render json: @list_item
      head :no_content
    else
      render json: @list_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /list_items/1
  def destroy
    @list_item.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_item
      @list_item = current_user.list_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_item_params
      params.require(:list_item, :list_item_name).permit(:list_item_name, :list_item_category, :list_item_status, :list_item_reminder, :list_item_reminder_date)
    end
end
