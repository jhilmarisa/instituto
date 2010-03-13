class ParvulariosController < ApplicationController
    def parvularios
    @parvularios = Parvulario 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @parvularios}
  end
  end
end
