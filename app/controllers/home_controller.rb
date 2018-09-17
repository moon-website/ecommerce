class HomeController < ApplicationController
  def index
    @courses = Course.limit(3)
  end
end
