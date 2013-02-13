class Contest < ActiveRecord::Base
  attr_accessible :end_date, :present_to_win, :prize, :start_date, :sponsor_id, :meeting_id
  validates :end_date, :presence => true
  validates :prize, :presence => true
  validates :start_date, :presence => true
  validates :meeting_id, :presence => true
  validates :sponsor_id, :presence => true

  belongs_to :sponsor
  belongs_to :meeting
end
