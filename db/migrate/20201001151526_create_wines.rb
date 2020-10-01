class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.integer :year
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
