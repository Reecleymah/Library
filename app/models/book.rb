class Book < ApplicationRecord
    
    has_one_attached :imagen
    has_many :favorites
    has_many :favorited_by, through: :favorites, source: :user
    
end
