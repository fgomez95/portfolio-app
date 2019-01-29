class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
    
    def index 
        @portfolio_items=Portfolio.first_two
    end
    
    def show 
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
    
    def edit 
    end
    
    def update 
        if @portfolio_item.update(portfolio_params)
            redirect_to portfolios_path
        end
    end
    
    def destroy
        if @portfolio_item.destroy
            redirect_to portfolios_path, notice: 'deleted'
        end
    end
    
    private
    
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
    end
    
    def set_portfolio_item
        @portfolio_item = Portfolio.find(params[:id])
    end
        
end
