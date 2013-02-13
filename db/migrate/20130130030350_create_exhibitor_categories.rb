class CreateExhibitorCategories < ActiveRecord::Migration
  def change
    create_table :exhibitor_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
