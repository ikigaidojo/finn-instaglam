class Member < ApplicationRecord
  has_many :posts

  validates :first_name,  presence: true 
  validates :last_name,   presence: true
  validates :email,       presence: true
  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
end

