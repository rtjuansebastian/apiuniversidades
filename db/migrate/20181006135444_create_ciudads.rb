class CreateCiudads < ActiveRecord::Migration[5.1]
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.belongs_to :departamento, foreign_key: true

      t.timestamps
    end
  end
end
