class MonitorController < ApplicationController

  def index
    @instruments = Instrument.all

    @data = Instrument.find(1).data(20)
  end
  
  
  def show
  end
 
  def live
    m = Instrument.find(instrument_id).last_measurement
    if m
      render :json => m.json_point
    else
      render :json => nil
    end
  end
      
end
