class CreateTransgressions < ActiveRecord::Migration
  def change
    create_table :transgressions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :description, null: false
      t.string :sin_type, null: false

      t.timestamps null: false
    end

    add_index :transgressions, :sin_type
  end
end
