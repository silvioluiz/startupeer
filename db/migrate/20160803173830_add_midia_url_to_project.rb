class AddMidiaUrlToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :media_url, :string
  end
end
