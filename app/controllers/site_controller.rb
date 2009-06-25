class SiteController < ApplicationController
  def login
    @target_path = params[:target_path]
  end

end
