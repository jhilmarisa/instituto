class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.string :nombre_especialidad
      t.string :dias
      t.string :horas

      t.timestamps
    end
  end

  def self.down
    drop_table :horarios
  end
end
