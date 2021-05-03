class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.integer :days
      t.boolean :completed, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
