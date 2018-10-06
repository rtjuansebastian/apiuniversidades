class CreateProgramas < ActiveRecord::Migration[5.1]
  def change
    create_table :programas do |t|
      t.string :nombre
      t.string :codigo_snies
      t.float :costos
      t.integer :numero_semestres
      t.string :correo_contacto
      t.belongs_to :universidad, foreign_key: true
      t.belongs_to :sede, foreign_key: true
      t.belongs_to :nucleos_basicos_conocimiento, foreign_key: true
      t.belongs_to :nivel, foreign_key: true
      t.belongs_to :modalidad, foreign_key: true
      t.belongs_to :jornada, foreign_key: true

      t.timestamps
    end
  end
end
