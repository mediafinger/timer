class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.string :status
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
