class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :status
      t.datetime :deadline
      t.boolean :status, default: false
      t.timestamps
    end
  end
end