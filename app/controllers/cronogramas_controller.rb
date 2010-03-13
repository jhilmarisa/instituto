class CronogramasController < ApplicationController
     def cronogramas
    @cronogramas = cronograma

    respond_to do |format|
      format.html # index.html.erb
     format.xml  { render :xml => @cronogramas}
  end
  end
end
