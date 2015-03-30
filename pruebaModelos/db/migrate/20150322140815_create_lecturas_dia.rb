class CreateLecturasDia < ActiveRecord::Migration
  def change
    create_table :lecturas_dia do |t|
      t.references :lecturas_minuto, index: true, foreign_key: true
      t.integer :calorias
      t.integer :sueño
      t.float :distancia
      t.integer :pasos

      t.timestamps null: false
    end
  end
end
