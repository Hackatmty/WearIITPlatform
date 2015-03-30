class CreateDispositivos < ActiveRecord::Migration
  def change
    create_table :dispositivos do |t|
      t.references :usuarios, index: true, foreign_key: true
      t.string :name
      t.string :marca

      t.timestamps null: false
    end
  end
end
