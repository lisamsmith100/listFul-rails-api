# frozen_string_literal: true

class TemplateItemsController < ProtectedController
  before_action :set_template_item, only: [:show, :update, :destroy]

  # GET /template_items
  def index
    @template_items = current_user.template_items.all

    render json: @template_items
  end

  # GET /template_items/1
  def show
    @template_item = current_user.template_item.all
    render json: @template_item
  end

  # POST /template_items
  def create
    @template_item = current_user.template_items.build(entry_params)

    if @template_item.save
      render json: @template_item, status: :created, location: @template_item
    else
      render json: @template_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /template_items/1
  def update
    if @template_item.update(template_item_params)
      render json: @template_item
      head :no_content
    else
      render json: @template_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /template_items/1
  def destroy
    @template_item.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_item
      @template_item = current_user.template_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_item_params
      params.require(:template_item, :template_item_name).permit(:template_item_name, :template_item_category, :template_item_status, :template_item_reminder, :template_item_reminder_date)
    end
end
