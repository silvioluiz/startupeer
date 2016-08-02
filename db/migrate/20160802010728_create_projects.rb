class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :user
      t.string :category
      t.string :location
      t.string :stage
      t.string :main_social
      t.text :description
      t.text :looking_for

      t.timestamps
    end
  end
end
