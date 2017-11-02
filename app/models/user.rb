require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  has_many :maker_matched_meals, foreign_key: :meal_maker_id
  has_many :recipient_matched_meals, foreign_key: :meal_recipient_id

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
