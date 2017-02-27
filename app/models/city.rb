class City < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  belongs_to :user
  ratyrate_rateable "overall_rating", "safety_rating"
end
