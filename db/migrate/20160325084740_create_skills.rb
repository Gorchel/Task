class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table(:skills_users, :id => false) do |t|
      t.references :user
      t.references :skill
    end

 	add_index(:skills, :name)
    add_index(:skills_users, [ :user_id, :skill_id ])
  end
end
