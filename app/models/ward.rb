class Ward < ActiveRecord::Base
  has_many :users
  has_many :patients
end
