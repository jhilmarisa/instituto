class InstalacionesController < ApplicationController
    def instalaciones
    @instalaciones = Instalacione

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @instalaciones}
  end
  end
end
