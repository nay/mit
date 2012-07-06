class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :created_on, :null => false

      t.timestamps
    end
    add_index :days, :created_on
  end
end
