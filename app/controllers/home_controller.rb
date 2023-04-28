class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "Roberto"
  end
end
