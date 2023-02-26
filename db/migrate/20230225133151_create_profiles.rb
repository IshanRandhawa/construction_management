class CreateProfiles < ActiveRecord::Migration[6.0]
  def up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :profile_type
      t.json :data

      t.timestamps
    end
  end

  def down
    return
  end
end
