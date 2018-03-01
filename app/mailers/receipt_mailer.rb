class ReceiptMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_receipt(user, order)
    @user = user
    @order = order
    @url = 'http://localhost:3000/orders/'
    mail(to: @user.email, subject: "Jungle Receipt: Order: #{@order.id}")
  end
end