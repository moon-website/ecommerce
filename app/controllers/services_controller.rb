class ServicesController < ApplicationController
  def index
    if params[:page] == ""
      params[:page] == 2
    end
    @services = Service.paginate(page: params[:page], per_page: 1).order('priority ASC')
    @last_service = Service.order('priority DESC').first
  end
end

