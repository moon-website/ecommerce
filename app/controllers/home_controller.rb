class HomeController < ApplicationController
  def index
    @courses          = Course.limit(3)
    @service_eyebrown  = Service.where(order: "01").first
    @service_eyelashes = Service.where(order: "02").first
    @service_nails     = Service.where(order: "03").first
    @catagories.includes(:products)
  end
end
