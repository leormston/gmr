class Changevideostostring < ActiveRecord::Migration[5.2]
  def change
    change_column :resources, :video_one, :string
    change_column :resources, :video_two, :string
  end
end
