class CreateFinancing < ActiveRecord::Migration
  def change
    create_table :financing_tables do |t|
      t.string  :bank,          null: false
      t.integer :time,          limit: 3, null: false
      t.integer :return,        limit: 2, null: false
      t.decimal :coefficient,   precision: 6, scale: 5, null: false
      t.integer :initial_year,  limit: 4, null: false
      t.integer :end_year,      limit: 4, null: false

      t.timestamps
    end
  end
end
