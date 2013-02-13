class CreateMeetingsSponsors < ActiveRecord::Migration
  def up
  	create_table :meetings_sponsors, :id => false do |t|
  		t.references :meeting
  		t.references :sponsor
  	end
  end

  def down
  	drop_table :meetings_sponsors
  end
end
