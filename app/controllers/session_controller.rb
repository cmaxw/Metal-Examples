class SessionController < ApplicationController
  def new
    if request.post?
      if User.authenticate(params[:user][:username], params[:user][:password])
        redirect_to :controller => "fun", :action => "index"
      end
    end
  end
end
