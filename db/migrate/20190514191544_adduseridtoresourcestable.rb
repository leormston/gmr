class Adduseridtoresourcestable < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :user_id, :string, default: ""
  end
end
