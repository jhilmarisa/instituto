class TurismosController < ApplicationController
    def turismos
    @Turismos = Turismo 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @Turismos}
  end
  end
end
