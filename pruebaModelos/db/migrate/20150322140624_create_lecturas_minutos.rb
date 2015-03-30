class CreateLecturasMinutos < ActiveRecord::Migration
  def change
    create_table :lecturas_minutos do |t|
      t.references :dispositivos, index: true, foreign_key: true
      t.integer :latidos
      t.float :distancia
      t.integer :pasos

      t.timestamps null: false
    end
  end
end
