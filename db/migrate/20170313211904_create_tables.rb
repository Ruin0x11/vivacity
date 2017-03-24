class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.column :name, :string, limit: 60
    end
    create_table :albums do |t|
      t.belongs_to :artist, index: true
      t.column :name, :string, limit: 60
      t.column :release_date, :date
    end
    create_table :songs do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :album, index: true
      t.column :name, :string, limit: 60
      t.column :length, :int
      t.column :release_date, :date
    end
    create_table :genres do |t|
      t.column :name, :string, limit: 60
    end
    create_table :locations do |t|
      t.column :latitude, :float
      t.column :longitude, :float
      t.column :city_name, :string, limit: 60
      t.column :country_name, :string, limit: 60
    end
    create_table :weather_types do |t|
      t.column :name, :string, limit: 60
      t.column :des, :string, limit: 60
      t.column :precipitation, :float
      t.column :temp_low, :int, limit: 11
      t.column :temp_high, :int, limit: 11
      t.column :wind_speed, :int, limit: 11
    end

    #add_foreign_key :songs, :artists
    #add_foreign_key :songs, :albums
    #add_foreign_key :albums, :artists
  end
end
