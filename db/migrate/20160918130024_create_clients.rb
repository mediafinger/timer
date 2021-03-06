class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.string :name

      t.timestamps
    end
  end
end
