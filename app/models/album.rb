class Album < ApplicationRecord
  validates :name, presence: true
  validates :band_id, presence: true, uniqueness: true

  belongs_to :band

  has_many :tracks,
    dependent: :destroy
end
