class BienestaresController < ApplicationController
   def bienestares
    @bienestares = bienestar

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @bienestares}
  end
  end
end
