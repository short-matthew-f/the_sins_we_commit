class ChangeColumnsInConfessions < ActiveRecord::Migration
  def change
    change_column :confessions, :description, :string, null: false
    change_column :confessions, :occurred_at, :datetime, null: false, default: Time.now
  end
end
