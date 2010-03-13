class CreateEstudiantes < ActiveRecord::Migration
  def self.up
    create_table :estudiantes do |t|
      t.string :nombre_ususario
      t.string :password, :precision=> 8
      t.string :nombre
      t.string :a_paterno
      t.string :a_materno
      t.string :ci, :precision=> 12
      t.string :correo
      t.string :telefono, :precision=> 8

      t.timestamps
    end
  end

  def self.down
    drop_table :estudiantes
  end
end
