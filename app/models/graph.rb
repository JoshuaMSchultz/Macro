require 'yahoo_stock'

class Graph < ActiveRecord::Base
  attr_accessor :stock_symbol, :start_date, :end_date
  
  def historical_data
    YahooStock::History.new(:stock_symbol => stock_symbol, :start_date => start_date, :end_date => end_date, :type => :daily).results(:to_array).output
  end
  
  def start_date=(date)
    @start_date = Date.parse(date)
  end
  def end_date=(date)
    @end_date = Date.parse(date)
  end
end
