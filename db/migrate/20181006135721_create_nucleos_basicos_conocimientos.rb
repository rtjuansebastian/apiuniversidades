class CreateNucleosBasicosConocimientos < ActiveRecord::Migration[5.1]
  def change
    create_table :nucleos_basicos_conocimientos do |t|
      t.string :nucleo_basico_conocimiento
      t.belongs_to :areas_conocimiento, foreign_key: true

      t.timestamps
    end
  end
end
