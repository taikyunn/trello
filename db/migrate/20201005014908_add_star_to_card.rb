class AddStarToCard < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :star, :float
  end
end
