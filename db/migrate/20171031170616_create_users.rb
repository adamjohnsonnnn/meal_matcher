class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
      t.datetime  :birthday
      t.integer :family_id
      t.integer :role_id
      t.string  :preferred_contact
      t.string  :email
      t.string  :phone_number
      t.string  :home_address
      t.string  :password_hash

      t.timestamps
    end

  end
end
