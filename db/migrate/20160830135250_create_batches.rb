class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.references :course, index: true, foreign_key: true
      t.string :name
      t.float :price
      t.date :start_date
      t.integer :schedule
      t.integer :strength
      t.integer :status

      t.timestamps null: false
    end
  end
end
