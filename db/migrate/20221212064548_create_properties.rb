class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :property_uid
      t.string :title
      t.string :description
      t.integer :price
      t.integer :land_size
      t.string :floor_plan
      t.date :built_year
      t.string :address
      t.integer :size_floor_0
      t.integer :size_floor_1
      t.integer :size_floor_2
      t.integer :size_floor_3
      t.integer :size_floor_4
      t.integer :size_floor_5
      t.integer :size_floor_6
      t.string :facility_info
      t.string :station_location_info
      t.string :school_location_info
      t.string :other_location_info
      t.string :remarks_info
      t.string :agent_name
      t.string :agent_url
      t.string :agent_address
      t.string :agent_email
      t.string :agent_phone
      t.string :agent_fax

      t.timestamps
    end
  end
end
