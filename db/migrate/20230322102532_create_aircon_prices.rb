class CreateAirconPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :aircon_prices do |t|
      t.string :name, null: false
      t.string :basic_description, null: false
      t.string :chemical_description, null: false
      t.integer :basic_price, null: false
      t.integer :chemical_price, null: false

      t.timestamps
    end
  end
end
