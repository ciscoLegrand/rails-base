class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_rich_text :content
  validates_presence_of :title, :content
end
