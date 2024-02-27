class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true # user id
      t.references :garden, null: false, foreign_key: true # garden id
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
