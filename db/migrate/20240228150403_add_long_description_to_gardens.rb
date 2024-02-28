class AddLongDescriptionToGardens < ActiveRecord::Migration[7.1]
  def change
    add_column :gardens, :long_description, :string
  end
end
