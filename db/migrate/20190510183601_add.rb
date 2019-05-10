class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :securecode, :string
  end
end
