class IndexInstitutoController < ApplicationController
  def index
    @index_instituto= Index_Instituto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @index_instituto }
    end
  end
end
