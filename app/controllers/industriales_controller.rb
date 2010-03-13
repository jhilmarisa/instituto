class IndustrialesController < ApplicationController
  def industriales
    @industriales = Industriale 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @industriales}
  end
  end
end
