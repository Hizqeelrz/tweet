class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :facebook
      t.string :twitter
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
