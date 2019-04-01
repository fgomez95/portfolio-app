class Portfolio < ApplicationRecord
    include Placeholder
    after_initialize :set_defaults
    validates_presence_of :title, :body, :main_image, :thumb_image
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
                                  
    scope :first_five, ->{ last(5).reverse }
    
    def self.first_two
        last(2).reverse
    end
    
    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
        self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
    end
    
    def self.by_position
        order("position ASC")
    end
end
