class EspecialidadesController < ApplicationController
  # GET /especialidades
  # GET /especialidades.xml
  def index
    @especialidades = Especialidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @especialidades }
    end
  end

  # GET /especialidades/1
  # GET /especialidades/1.xml
  def show
    @especialidade = Especialidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @especialidade }
    end
  end

  # GET /especialidades/new
  # GET /especialidades/new.xml
  def new
    @especialidade = Especialidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @especialidade }
    end
  end

  # GET /especialidades/1/edit
  def edit
    @especialidade = Especialidade.find(params[:id])
  end

  # POST /especialidades
  # POST /especialidades.xml
  def create
    @especialidade = Especialidade.new(params[:especialidade])

    respond_to do |format|
      if @especialidade.save
        flash[:notice] = 'Especialidade was successfully created.'
        format.html { redirect_to(@especialidade) }
        format.xml  { render :xml => @especialidade, :status => :created, :location => @especialidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @especialidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /especialidades/1
  # PUT /especialidades/1.xml
  def update
    @especialidade = Especialidade.find(params[:id])

    respond_to do |format|
      if @especialidade.update_attributes(params[:especialidade])
        flash[:notice] = 'Especialidade was successfully updated.'
        format.html { redirect_to(@especialidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @especialidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidades/1
  # DELETE /especialidades/1.xml
  def destroy
    @especialidade = Especialidade.find(params[:id])
    @especialidade.destroy

    respond_to do |format|
      format.html { redirect_to(especialidades_url) }
      format.xml  { head :ok }
    end
  end
end
