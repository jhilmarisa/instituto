class CapacitacionesController < ApplicationController  
  def capacitaciones
    @capacitaciones = Capacitacione 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @capacitaciones}
  end
  end
end


