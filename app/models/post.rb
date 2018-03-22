class Post < ApplicationRecord
  belongs_to :member
  validates :caption, presence: true
end
  