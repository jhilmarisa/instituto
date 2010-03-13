class CreateEspecialidades < ActiveRecord::Migration
  def self.up
    create_table :especialidades do |t|
      t.string :nombre_especialidad
      t.decimal :costo_matricula, :precision=> 8, :scale=>2
      t.decimal :costo_modulo, :precision=> 8, :scale=>2
      t.string :duracion_modulo
      t.integer :cantidad_modulos, :precision=> 2
      t.integer :cupo_max, :precision=> 2
      t.integer :cupo_min, :precision=> 2

      t.timestamps
    end
  end

  def self.down
    drop_table :especialidades
  end
end
