class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.string :sex
      t.text :job
      t.string :address
      t.text :from
      t.text :family
      t.text :character
      t.text :complaint
      t.text :history
      t.text :other
      t.date :intake
      t.text :photo
      t.string :email
      t.string :phone,
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
