# frozen_string_literal: true

require 'pry'

# TemplateItemsController Class
class TemplateItemsController < ProtectedController
  before_action :set_template
  before_action :set_template_item, only: %i[show update destroy]

  # GET /template_items
  def index
    @template_items = @template.template_items.all
    render json: @template_items
  end

  # GET /template_items/1
  def show
    @template_item = @template.template_items.find(params[:id])
    render json: @template_item
  end

  # POST /template_items
  def create
    @template_item = @template.template_items.build(template_item_params)
    if @template_item.save
      render json: @template_item, status: :created
    else
      render json: @template_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /template_items/1
  def update
  # @template_item = @template.template_items.find(params[:id])
  #
  # if @template_item.update(template_item_params)
  #   head :no_content
  # else
  #   render json: @template_item.errors, status: :unprocessable_entity
  # end
    @template_item = @template.template_items.update(template_item_params[:id])
    # @template_item = @template.template_items.find(params[:id])
    if @template_item
      render json: @template_item
      # head :no_content
    else
      render json: @template_item.errors.to_a, status: :unprocessable_entity
    end
  end

  # DELETE /template_items/1
  def destroy
    @template.template_items.find(params[:id]).destroy
    # @template_item = @template.template_items.find(params[:id])
    # if @template.template_items.find(params[:id]).destroy
    #   head :no_content
    #   render json: { id: params[:id] }
    # else
    #   render json: { id: @template.template_items.find(params[:id]) }, status: :unprocessable_entity
    # end
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_template
    @template = current_user.templates.find(params[:template_id])
  end

  def set_template_item
    @template_item = @template.template_items.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def template_item_params
    params.require(:template_item).permit(:template_item_name, :template_item_category, :template_item_status, :template_item_reminder, :template_item_reminder_date)
  end
end
