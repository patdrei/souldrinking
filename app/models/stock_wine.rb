class StockWine < ApplicationRecord
  belongs_to :retailer
  belongs_to :wine
end
