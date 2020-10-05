class CreateStockWines < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_wines do |t|
      t.references :retailer, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
