class CreateWineConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_connections do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :public

      t.timestamps
    end
  end
end
