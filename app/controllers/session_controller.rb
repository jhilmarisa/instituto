class SessionController < ApplicationController

  # Metodo para realizar el login de un usuario
  def new
    @estudiante = Estudiante.new
  #  @estudiante.errors.add(:nombre_usuario, "")
  end

  # metodo para poder validar al usuario
  def create
    # Buscamos con este metodo mediante el login
    @estudiante = Estudiante.find_by_nombre_usuario(params[:estudiante][:nombre_usuario])
  
    # Verificamos si el password es correcto
    if @estudiante and @estudiante.password == params[:estudiante][:password]
      # Mensaje notice que se presentara
      flash[:notice] = "Ha ingresado correctamente"
      # Se almance el id del usuario, tipo y su nombre
      session[:estudiante] = {}
      # Se itera a traves de los elementos
      #[:id, :tipo, :nombre,:a_paterno].each{ |v| session[:estudiante][v] = @estudiante[v] }
      # redirecion a la raiz
     redirect_to :reservas
    else
      @estudiante = Estudiante.new
      # Se adiciona el error a @usuario
      @estudiante.errors.add_to_base("Ha ingresado un login o password incorrectos")
      # Presentar la accion :new app/views/session/new.html.erb
      render :action => :new
    end
  end

  # Metodo para poder eliminar la sesion del usuario
  def destroy
    # Borrar los elementos de la sesion
    [:id, :nombre, :a_paterno,:a_materno].each{ |v| session[:estudiante].delete(v) }
    # redirecion a la raiz
    redirect_to "/"
  end
end
