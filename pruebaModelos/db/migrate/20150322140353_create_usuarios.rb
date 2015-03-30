class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.date :fechaNac
      t.string :genero
      t.float :peso
      t.float :altura
      t.string :password_digest
      t.string :email
      t.string  :remember_token
      t.timestamps
    end
  end
end
