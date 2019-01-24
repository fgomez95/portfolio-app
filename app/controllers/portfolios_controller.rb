class PortfoliosController < ApplicationController
    def index 
        @portfolio_items=Portfolio.all
    end
    
    def new
        @portfolio_item=Portfolio.new
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)
        if @portfolio_item.save
            redirect_to portfolios_path
        else
            redirect_to new_portfolio_path
        end
    end
    
    private
    
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
    end
        
end
