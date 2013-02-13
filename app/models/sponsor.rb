class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url
  validates :logo, :presence => true
  validates :url, :presence => true

  has_one :exhibitor
  has_and_belongs_to_many :meetings
end
