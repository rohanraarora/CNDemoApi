class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :price
      t.datetime :start_time
      t.datetime :end_time
      t.string :description
      t.string :venue
      t.string :speaker

      t.timestamps null: false
    end
  end
end
