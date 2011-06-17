class AddProvinciaIdUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :provincia_id, :integer
  end

  def self.down
    remove_column :users, :provincia_id
  end
end
