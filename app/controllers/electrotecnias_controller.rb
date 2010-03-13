class ElectrotecniasController < ApplicationController
    def electrotecnias
    @electrotecnias = Electrotecnia

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @electrotecnias}
  end
  end
end
