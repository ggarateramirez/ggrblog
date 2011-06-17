class AddTipouserIdUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :tipouser_id, :integer
  end

  def self.down
    remove_column :users, :tipouser_id
  end
end
