class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :day_id, :null => false
      t.text :name, :null => false
      t.boolean :lifework, :null => false, :default => false
      t.string :status, :null => false, :default => 'new'

      t.timestamps
    end
  end
end
