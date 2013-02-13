class Venue < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip
  validates :address, :presence => true
  validates :city, :presence => true
  validates :name, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true

  has_many :meetings

  def citystatezip
  	"#{city}, #{state} #{zip}"
  end
end
