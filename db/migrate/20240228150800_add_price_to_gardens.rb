class AddPriceToGardens < ActiveRecord::Migration[7.1]
  def change
    add_column :gardens, :price, :float
  end
end
