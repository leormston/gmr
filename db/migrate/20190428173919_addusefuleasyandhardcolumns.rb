class Addusefuleasyandhardcolumns < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :easy, :integer
    add_column :resources, :hard, :integer
    add_column :resources, :useful, :integer
  end
end
