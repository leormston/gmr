class VideosController < ApplicationController
  def search
    @resources = Resource.all.order(:created_at)
    if params[:q]
      search_term = params[:q]
      @resources = Resource.where("name LIKE ?", "%#{search_term}%").order(:created_at)
    end
    if params[:higher] == !("All" || "")   then
      @resources = @resources.where(higher: params[:higher])
    end
    if params[:topic] == !("All" || "") then
      @resources = @resources.where(topic: params[:topic])
    end
  end
end
