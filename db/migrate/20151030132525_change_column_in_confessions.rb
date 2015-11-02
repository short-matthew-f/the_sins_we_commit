class ChangeColumnInConfessions < ActiveRecord::Migration
  def change
    rename_column :confessions, :occured_at, :occurred_at
  end
end
