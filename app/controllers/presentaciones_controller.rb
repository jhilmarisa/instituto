class PresentacionesController < ApplicationController
  def presentaciones
    @presentaciones = presentacion

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @presentaciones}
  end
  end
end
