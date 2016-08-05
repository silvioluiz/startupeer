class AddReasonToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :reason, :text
  end
end
