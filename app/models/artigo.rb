class Artigo < ApplicationRecord
    validates :title, presence: true
    validates :contents, presence: true, length: { minimum: 10 }
    has_rich_text :contents
end
