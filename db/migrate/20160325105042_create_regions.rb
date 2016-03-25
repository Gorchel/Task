class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|

      t.references :country

      t.string :title_ru
      t.string :title_ua
      t.string :title_be
      t.string :title_en
      t.string :title_es
      t.string :title_pt
      t.string :title_de
      t.string :title_fr
      t.string :title_it
      t.string :title_pl
      t.string :title_ja
      t.string :title_lt
      t.string :title_lv
      t.string :title_cz	
      t.timestamps null: false
    end

    add_index :regions, :country_id
  end
end
