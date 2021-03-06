module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do 
        before_action :set_page_defaults
    end
    
    def set_page_defaults 
        @page_title = "Portfolio | Fernando Gomez"
        @seo_keywords = "Fernando Gomez Portfolio"
    end
end