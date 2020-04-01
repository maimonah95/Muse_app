class Artist < ApplicationRecord
    has_many :songs
    belongs_to :user
end
