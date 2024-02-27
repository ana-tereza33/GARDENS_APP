class CreateGardens < ActiveRecord::Migration[7.1]
  def change
    create_table :gardens do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :size
      t.string :address
      t.text :description
      t.decimal :price_per_day
      t.string :photo_url
      t.string :latitude
      t.string :longitude
      t.boolean :available

      t.timestamps
    end
  end
end
