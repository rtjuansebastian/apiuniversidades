class CreateUniversidads < ActiveRecord::Migration[5.1]
  def change
    create_table :universidads do |t|
      t.string :nombre
      t.belongs_to :ciudad, foreign_key: true
      t.boolean :acreditacion_institucional
      t.belongs_to :caracter, foreign_key: true
      t.string :direccion
      t.text :logo

      t.timestamps
    end
  end
end
