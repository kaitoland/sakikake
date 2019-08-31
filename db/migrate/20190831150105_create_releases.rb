class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.integer :project_id
      t.string :name
      t.string :icon
      t.string :tag
      t.integer :is_public

      t.timestamps
    end
  end
end
