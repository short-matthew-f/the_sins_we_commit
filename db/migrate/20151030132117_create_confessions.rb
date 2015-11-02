class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t|
      t.references :transgression, index: true, foreign_key: true
      t.date :occured_at
      t.string :description

      t.timestamps null: false
    end
  end
end
