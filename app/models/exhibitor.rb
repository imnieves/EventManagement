class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitor_category_id, :name, :sponsor_id
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
  validates :name, :presence => true

  belongs_to :exhibitor_category
  belongs_to :sponsor
  has_many :meetings, :through => :sponsor

  def issponsor
  	case sponsor_id
  		when nil
  			"No"
  		else
  			"Yes"
  	end
  end
end
