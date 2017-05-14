class AddIsAdminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_admin, :boolean, default: false  #新增欄位 :資料表，:欄位名 ， :布林值， :預設值為否
  end
end
