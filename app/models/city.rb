class City < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
  belongs_to :user
end
