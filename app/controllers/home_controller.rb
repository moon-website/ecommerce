class HomeController < ApplicationController
  def index
    @courses          = Course.limit(3)
    @service_eyebrown  = Service.where(priority: "01").first
    @service_eyelashes = Service.where(priority: "02").first
    @service_nails     = Service.where(priority: "03").first
    @categories        = Category.limit(3)
    # @catagories.includes(:products)
  end
end
