class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :creator_id
      t.integer :project_id

      t.timestamps
    end
  end
end
