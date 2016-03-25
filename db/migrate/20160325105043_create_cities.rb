class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|

	  t.references :country
	  t.references :region , null: true

	  t.boolean :important

      t.string :title_ru ,null: true
      t.string :title_ua ,null: true
      t.string :title_be ,null: true
      t.string :title_en ,null: true
      t.string :title_es ,null: true
      t.string :title_pt ,null: true
      t.string :title_de ,null: true
      t.string :title_fr ,null: true
      t.string :title_it ,null: true
      t.string :title_pl ,null: true
      t.string :title_ja ,null: true
      t.string :title_lt ,null: true
      t.string :title_lv ,null: true
      t.string :title_cz ,null: true  
      t.timestamps null: false
    end

    add_index :cities, [ :country_id, :region_id ]
  end
end
