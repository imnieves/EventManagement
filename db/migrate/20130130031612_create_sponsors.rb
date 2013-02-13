class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :url
      t.string :logo

      t.timestamps
    end
  end
end
