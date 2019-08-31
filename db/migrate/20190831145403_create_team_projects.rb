class CreateTeamProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :team_projects do |t|
      t.integer :team_id
      t.integer :project_id
      t.string :icon
      t.integer :is_public
      t.string :comment

      t.timestamps
    end
  end
end
