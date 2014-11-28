require 'yahoo_stock'

class GraphsController < ApplicationController
  
  def stock
    allocate_variables
    @dates
  end
  
  def new_stock
    @historical_data = Graph.new(stock_params).historical_data
    render :stock
  end
  
  
  private
  
  def stock_params
    params.require(:graph).permit(:stock_symbol, :start_date, :end_date, :type)
  end
end
