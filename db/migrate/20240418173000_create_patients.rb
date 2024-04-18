class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :age, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
