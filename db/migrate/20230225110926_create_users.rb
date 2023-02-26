class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :name
      t.text :phone_no
      
      t.timestamps
    end
  end

  def down
  end
end
