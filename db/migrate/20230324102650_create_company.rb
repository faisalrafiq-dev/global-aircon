class CreateCompany < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :phone_number
      t.string :facebook_link
      t.string :instagram_link
      t.string :twitter_link
      t.string :linkedin_link
      t.string :first_mail
      t.string :second_mail
      t.text :primary_address
      t.text :secondary_address

      t.timestamps
    end
  end
end
