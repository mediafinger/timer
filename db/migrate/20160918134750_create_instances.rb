class CreateInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :instances do |t|
      t.references :project, foreign_key: true
      t.text :comment
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
