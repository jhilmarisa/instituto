class GastronomiasController < ApplicationController
  def Gastronomias
    @gastronomias = Gastronomia

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @gastronomias}
  end
  end
end
