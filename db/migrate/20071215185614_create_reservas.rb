class CreateReservas < ActiveRecord::Migration
  def self.up
    create_table :reservas do |t|
      t.string :nombre_especialidad
      t.string :r_nombre
      t.string :r_a_paterno
      t.string :r_a_materno
      t.string :r_correo
      t.string :r_dia
      t.string :r_hora

      t.timestamps
    end
  end

  def self.down
    drop_table :reservas
  end
end
