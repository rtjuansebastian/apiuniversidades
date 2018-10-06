class CreateSedes < ActiveRecord::Migration[5.1]
  def change
    create_table :sedes do |t|
      t.string :nombre
      t.string :direccion
      t.belongs_to :universidad, foreign_key: true
      t.belongs_to :ciudad, foreign_key: true

      t.timestamps
    end
  end
end
