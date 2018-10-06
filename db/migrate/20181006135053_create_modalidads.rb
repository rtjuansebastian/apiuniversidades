class CreateModalidads < ActiveRecord::Migration[5.1]
  def change
    create_table :modalidads do |t|
      t.string :modalidad

      t.timestamps
    end
  end
end
