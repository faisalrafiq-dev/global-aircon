class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.text :address, null: false
      t.date :scheduled_date, null: false
      t.text :comment, default: ""

      t.timestamps
    end
  end
end
