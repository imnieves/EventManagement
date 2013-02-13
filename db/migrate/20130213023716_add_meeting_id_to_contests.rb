class AddMeetingIdToContests < ActiveRecord::Migration
  def change
  	add_column :contests, :meeting_id, :integer
  end
end
