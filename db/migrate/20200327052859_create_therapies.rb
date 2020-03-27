class CreateTherapies < ActiveRecord::Migration[5.0]
  def change
    create_table :therapies do |t|
      t.text :therapy, null: false
      t.date :date, null: false
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
