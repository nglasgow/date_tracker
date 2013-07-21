class Tracker < ActiveRecord::Base
  attr_accessible :date, :description

  validates :date, :presence => true
end
