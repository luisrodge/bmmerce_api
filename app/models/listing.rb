class Listing < ApplicationRecord
    belongs_to :user, optional: true
    has_many :images
    
    validates_presence_of :title, :address
    validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
end
