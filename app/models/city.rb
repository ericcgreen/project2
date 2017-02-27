class City < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  ratyrate_rateable "overall_rating", "safe_rating"
end
