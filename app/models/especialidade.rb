class Especialidade < ActiveRecord::Base
    # Se define una constante con tipos de usuarios
  TIPOS = [["Ingles", "ingles"], ["Ensamblaje de computadoras", "ensamblaje de computadoras"],["peluqueria","peluqueria"],["Reposteria","reposteria"],["Mecanica automotriz","automotriz"],["Capacitacion","capacitacion"],["Electrotecnia Industrial","electrotecnia"],["Gastronomia","gastronomia"],["Mecanica Industrial","mecanica industrial"],["Intalacion de Gas","instalacion de gas"],["Parvulario","Parvulario"],["Turismo y Hoteleria","turismo y hoteleria"]]
      #html = link_to(session[:usuario][:nombre], usuario_path(session[:usuario][:id]) )
  # Relación de 1 a muchos
  #has_many :compra_detalles

  # Presenta el tipo de forma legible
  # Busca dentro de un array con el metodo find
  # y finalmente presenta el ultimo elemento del sub array que encuentra
  # Probar Usuario::TIPOS.find{ |v| v.last == tipo }
  def ver_tipo
    TIPOS.find{ |v| v.last == tipo }.first
  end

end
