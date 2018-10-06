class CreateNivels < ActiveRecord::Migration[5.1]
  def change
    create_table :nivels do |t|
      t.string :nivel_formacion

      t.timestamps
    end
  end
end
