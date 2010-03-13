class AdmisionesController < ApplicationController
  def admisiones
    @admisiones = admision

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @admisiones}
  end
  end
end
