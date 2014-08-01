require 'yahoo_stock'
class GraphsController < ApplicationController
  
  def stock
    @historical_data
  end
  
  def new_stock
    
    @historical_data = Graph.new(stock_params).historical_data
    render :stock
    # if  @historical_data.save
 #      render :stock, notice: "Chart updated"
 #    else
 #      render :stock, notice: "Something is wrong"
 #    end
  end
  
  
  private
  
  def stock_params
    params.require(:graph).permit(:stock_symbol, :start_date, :end_date, :type)
  end
end
