class Horario < ActiveRecord::Base
   # Solo para "validates_presence_of" se puede añadir varios campos
  #validates_presence_of :nombre, :login, :pass, :fecha_nacimiento, :tipo
  # Valida de que este campo sea único en toda la base de datos, osea que no exista otro igual en la tabla usuarios
  
    # Se define una constante con tipos de usuarios
    
  TIPOS = [["Usuario", "nombre_especialidad"], ["Administrador", "admin"]]
 
  # Presenta el tipo de forma legible
  # Busca dentro de un array con el metodo find
  # y finalmente presenta el ultimo elemento del sub array que encuentra
  # Probar Usuario::TIPOS.find{ |v| v.last == tipo }
  def ver_tipo
    TIPOS.find{ |v| v.last == tipo }.first
  end
  
end
