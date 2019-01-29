class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image
    after_initialize :set_defaults
    
    scope :first_five, ->{ last(5).reverse }
    
    def self.first_two
        last(2).reverse
    end
    
    def set_defaults
        self.main_image ||= "https://placehold.it/600x400"
        self.thumb_image ||= "https://placehold.it/350x200"
    end
end
