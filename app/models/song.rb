class Song < ApplicationRecord
  belongs_to :bill, optional: true
  belongs_to :artist
end
