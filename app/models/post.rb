class Post < ApplicationRecord
  belongs_to :member, optional: true
  validates :caption, presence: true

  attachment :profile_image
end
  