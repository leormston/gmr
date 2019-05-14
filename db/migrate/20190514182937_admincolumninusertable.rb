class Admincolumninusertable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :admin_key, :string, default: SecureRandom.random_number.to_s + "-admin"
  end
end
