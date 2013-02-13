class CreateExhibitors < ActiveRecord::Migration
  def change
    create_table :exhibitors do |t|
      t.string :name
      t.text :description
      t.integer :sponsor_id
      t.integer :exhibitor_category_id

      t.timestamps
    end
  end
end
