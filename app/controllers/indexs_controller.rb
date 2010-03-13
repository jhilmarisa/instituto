class IndexsController < ApplicationController
  def index
    @indexs = Index 

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @indexs}
  end
  end
end






