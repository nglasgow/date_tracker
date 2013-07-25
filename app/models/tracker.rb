class Tracker < ActiveRecord::Base
  attr_accessible :date, :name, :description

  validates :date, :presence => true
end
