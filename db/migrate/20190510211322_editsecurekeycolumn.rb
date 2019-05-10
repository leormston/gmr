class Editsecurekeycolumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :securecode, :string, default: SecureRandom.random_number.to_s
  end
end
