class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :client, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
