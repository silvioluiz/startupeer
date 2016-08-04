class RemoveUserFromProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :user, :string
  end
end
