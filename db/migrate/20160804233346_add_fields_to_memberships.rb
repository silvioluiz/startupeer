class AddFieldsToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :role, :string
    add_column :memberships, :portifolio, :text
    add_column :memberships, :status, :integer, default: 0
  end
end
