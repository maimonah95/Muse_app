class Song < ApplicationRecord
  belongs_to :artist, dependent: :destroy
end
