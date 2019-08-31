class CreateIsOpens < ActiveRecord::Migration[5.2]
  def change
    create_table :is_opens do |t|
      t.integer :user_id
      t.integer :age
      t.integer :join_team
      t.integer :join_project
      t.integer :comment

      t.timestamps
    end
  end
end
