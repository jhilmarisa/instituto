class ServiciosController < ApplicationController
   def servicios
    @servicios = servicio

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @servicios}
  end
  end
end
