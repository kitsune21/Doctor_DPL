class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :tenure
      t.belongs_to :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
