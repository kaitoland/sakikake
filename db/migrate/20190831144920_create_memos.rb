class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :is_team
      t.string :team_id
      t.string :user_id

      t.timestamps
    end
  end
end
