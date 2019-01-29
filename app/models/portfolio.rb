class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image
    
    scope :first_five, ->{ last(5).reverse }
    
    def self.first_two
        last(2).reverse
    end
end
