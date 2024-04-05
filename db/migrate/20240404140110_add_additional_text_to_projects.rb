class AddAdditionalTextToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :additional_text, :text
  end
end
