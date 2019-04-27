class ChangeHigherColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :resources, :higher, :string
  end
end
