class AddNamerouteProvincias < ActiveRecord::Migration
  def self.up
    add_column :provincias, :nameroute, :string
  end

  def self.down
    remove_column :provincias, :nameroute
  end
end
