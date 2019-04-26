class AddColumnsToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :name, :string
    add_column :resources, :views, :integer
    add_column :resources, :video_one, :integer
    add_column :resources, :video_two, :integer
    add_column :resources, :question_id, :integer
    add_column :resources, :answers_id, :integer
    add_column :resources, :pp_id, :integer
    add_column :resources, :cs_w_id, :integer
    add_column :resources, :cs_pdf_id, :integer
    add_column :resources, :topic, :string
    add_column :resources, :higher, :boolean
  end
end
