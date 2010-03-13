# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # Presenta el nombre del usuario y un vinvulo de salida para
  def mostrar_estudiante
    if session[:estudiante] and session[:estudiante][:id]
      html = link_to(session[:estudiante][:nombre_usuario], estudiante_path(session[:estudiante][:id]) )
      html << " "
      html << link_to("Salir", "/logout", :class => 'salir')
    else
      link_to "","/login"
    end

  end

end
