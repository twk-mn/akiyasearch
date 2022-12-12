class CreatePropertySources < ActiveRecord::Migration[7.0]
  def change
    create_table :property_sources do |t|
      t.string :name
      t.string :source_url
      t.string :source_type
      t.string :properties_base_url
      t.string :property_selector

      t.timestamps
    end
  end
end
