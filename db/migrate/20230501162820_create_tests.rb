#Modifica la estructura de la base de datos
class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
