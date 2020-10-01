class WineProperty < ApplicationRecord
  belongs_to :wine
  belongs_to :property
end
