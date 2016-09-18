class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :client
      t.references :user
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
