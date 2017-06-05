# frozen_string_literal: true

class ListsController < ProtectedController
  before_action :set_list, only: [:show, :update, :destroy]

  # index:  GET /lists
  def index
    @lists = current_user.lists.all
    # @entries = @entries.sort_by(&:date_added :id)
    render json: @lists
  end

  # GET /lists/1
  def show
    @list = current_user.list.find(params[:id])
    render json: @list
  end

  # POST /lists
  def create
    @list = current_user.lists.build(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: @list
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = current_user.lists.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:list_name, :list_category, :list_status)
      # , :list_reminder, :list_reminder_date
    end
end
