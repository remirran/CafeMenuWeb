class RenameCuisineToSection < ActiveRecord::Migration
  def up
    rename_table :cuisines, :sections
    change_table(:sections) do |t|
      t.references :section
    end
  end

  def down
    remove_column :section_id
    rename_table :sections, :cuisines
  end
end
