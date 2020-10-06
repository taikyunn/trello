class CreateCheckeds < ActiveRecord::Migration[6.0]
  def change
    create_table :checkeds do |t|
      t.boolean :checked
      t.timestamps
    end
  end
end
