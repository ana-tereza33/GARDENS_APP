class AddAdressToGardens < ActiveRecord::Migration[7.1]
  def change
    add_column :gardens, :adress, :string
  end
end
