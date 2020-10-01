class CreateWineProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_properties do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
