class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.references :user
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
