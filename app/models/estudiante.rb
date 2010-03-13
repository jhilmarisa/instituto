class Estudiante < ActiveRecord::Base
   # Solo para "validates_presence_of" se puede añadir varios campos
  validates_presence_of :nombre_usuario, :password, :nombre
  # Valida de que este campo sea único en toda la base de datos, osea que no exista otro igual en la tabla usuarios
  validates_uniqueness_of :nombre_usuario
  validates_confirmation_of :password

  # Atributo creado para poder crear login y password
  attr_accessor :pass_confirmation


end
