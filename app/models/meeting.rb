class Meeting < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :venue_id, :sponsor_ids
  validates :end_date, :presence => true
  validates :name, :presence => true
  validates :start_date, :presence => true

  belongs_to :venue
  has_and_belongs_to_many :sponsors
  has_many :exhibitors, :through => :sponsors
end
