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

    # 管理者出貨時寄出通知
  def notify_ship(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] 您的订单 #{order.token}已发货")
  end

  # 管理者取消訂單時寄出通知
  def notify_cancel(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] 您的订单 #{order.token}已取消")
  end


end
