class CreateUserDescriptions < ActiveRecord::Migration
  def change
    create_table :user_descriptions do |t|

      t.references :user	
	  #t.string :login, null: true, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :avatar, null: true, default: "default.png"
      t.date :birthday, null: false
      t.float :rate, null: false, default: 0
      t.string :telefon, null: true, default: ""
      t.string :skype, null: true, default: ""

   	  t.references :country, null: true
	  t.references :region, null: true
	  t.references :city, null: true

      t.timestamps null: false
    end

    add_index :user_descriptions, :user_id
    add_index :user_descriptions, [ :country_id, :region_id, :city_id ]
    #add_index :user_descriptions, :login,     unique: true
  end
end
