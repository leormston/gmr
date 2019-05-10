class HomeController < ApplicationController
  def index
    @resources1 = Resource.order('hard DESC').limit(5)
    @resources2 = Resource.order('easy DESC').limit(5)
    @resources3 = Resource.order('useful DESC').limit(5)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end


end
