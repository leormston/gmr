class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.json
  def index
    @resources = Resource.order(:creeated_at)
    if params[:q]
      search_term = params[:q]
      @resources = Resource.where("name LIKE ?", "%#{search_term}%").order(:created_at)
    end
    if params[:higher] != "All" then
      @resources = @resources.where(higher: params[:higher])
    end
    if params[:topic] != "All" then
      @resources = @resources.where(topic: params[:topic])
    end
  end

  def video

  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    if params[:l]
      @horizontal = true

    end
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)
    @resource.easy = 0
    @resource.hard = 0
    @resource.useful = 0
    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:name, :higher, :topic, :video_one, :video_two, :cs_pdf, :cs_word, :pp, :question_sheet, :answer_sheet)
    end

end
