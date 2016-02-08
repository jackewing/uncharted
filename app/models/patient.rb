class Patient < ActiveRecord::Base
  has_many :observation_sets
  belongs_to :ward
  has_many :users, through: :ward
  has_many :alerts

  validates_presence_of :nhi
end
