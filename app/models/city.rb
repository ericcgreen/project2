class City < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
end
