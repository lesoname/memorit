class Artigo < ApplicationRecord
    validates :título, presence: true
    validates :conteúdo, presence: true, length: { minimum: 10 }
end
