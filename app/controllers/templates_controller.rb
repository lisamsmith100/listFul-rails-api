# frozen_string_literal: true

class TemplatesController < ProtectedController
  before_action :set_template, only: [:show, :update, :destroy]

  # GET /templates
  def index
    @templates = current_user.templates.all
    render json: @templates
  end

  # GET /templates/1
  def show
    @templates = current_user.templates.find(params[:id])
    render json: @templates
  end

  # POST /templates
  def create
    @template = current_user.templates.build(template_params)

    if @template.save
      render json: @template, status: :created, location: @template
    else
      render json: @template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /templates/1
  def update
    if @template.update(template_params)
      render json: @template
      head :no_content
    else
      render json: @template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /templates/1
  def destroy
    @template.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = current_user.templates.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def template_params
      params.require(:template).permit(:template_name, :template_category, :template_status, :template_reminder, :template_reminder_date)
    end
end
