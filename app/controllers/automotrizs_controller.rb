class AutomotrizsController < ApplicationController
  def automotrizs
    @automotrizs = Automotriz 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @automotrizs}
  end
  end
end
