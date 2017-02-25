class Rating < ActiveRecord::Base
  belongs_to :city
  validates :city, presence: true
  validates :name, presence: true
  belongs_to :user
end
