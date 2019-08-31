class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :icon
      t.string :comment
      t.string :is_accept_message

      t.timestamps
    end
  end
end
