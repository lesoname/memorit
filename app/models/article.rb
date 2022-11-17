class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true, length: { minimum: 200 }
    has_rich_text :content
    extend FriendlyId
    friendly_id :title, use: :slugged
    belongs_to :user
end
