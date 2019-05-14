class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  # GET /communities
  # GET /communities.json
  def index
    @resources = Resource.where.not(user_id: "4").order(:created_at)
    if params[:q]
      search_term = params[:q]
      @resources = Resource.where("name LIKE ?", "%#{search_term}%").order(:created_at)
    end
    if params[:higher] && params[:higher] != "All"
      @resources = @resources.where(higher: params[:higher])
    end
    if (params[:topic] && params[:topic] != "All")
      @resources = @resources.where(topic: params[:topic])
    end
  end

  # GET /communities/1
  # GET /communities/1.json
  def show
    if params[:l]
      @horizontal = true
    end
    @creator = User.find(@resource.user_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_params
      params.require(:community).permit(:index)
    end
end
