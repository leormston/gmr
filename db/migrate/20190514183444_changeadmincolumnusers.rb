class Changeadmincolumnusers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :admin, :string, default: ""
  end
end
