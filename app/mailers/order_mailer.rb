class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDstore] 感谢您完成本次的下單，以下是您這次購物明细 #{order.token}")
  end

  def apply_cancel(order)
    @order      = order
    @user       = order.user
    @product_lists = @order.product_lists

    mail(to: "admin@test.com", subject: "[JDstore] 用戶 #{order.user.email}申請取消訂單#{order.token}")
  end

  def notify_ship(order)#出貨後 ，系統寄出通知信
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDstore] 您的訂單 #{order.token}，已發貨")
  end
  def notify_cancel#取消後 ，系統寄出通知信
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDstore] 您的訂單 #{order.token}，已取消")
  end

end
