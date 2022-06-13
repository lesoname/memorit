class Artigo < ApplicationRecord
    validates :title, presence: true
    validates :contents, presence: true, length: { minimum: 10 }
end
