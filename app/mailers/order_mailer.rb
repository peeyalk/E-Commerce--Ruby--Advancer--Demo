class OrderMailer < ApplicationMailer
  include MailHelper
  before_action :set_email

  def new_order_email
    @cart = Cart.find(params[:cart_id])

    mail(to: @email, subject: "You got a new order!")
  end

  private 
  def set_email
    @email = get_email
  end

end
