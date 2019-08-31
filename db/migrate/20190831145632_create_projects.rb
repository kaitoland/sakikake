class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :icon
      t.string :tag
      t.integer :is_public

      t.timestamps
    end
  end
end
