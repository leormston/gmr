class HomeController < ApplicationController
  def index
    @resources1 = Resource.order('hard DESC').limit(5)
    @resources2 = Resource.order('easy DESC').limit(5)
    @resources3 = Resource.order('useful DESC').limit(5)
  end
end
