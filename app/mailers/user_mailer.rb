class UserMailer < ApplicationMailer
  default from: 'notifications@moonbeauty.com'

  def register_course
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def order_service
  end

  def order_product
  end
end
