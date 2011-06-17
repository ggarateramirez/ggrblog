class CreateTipousers < ActiveRecord::Migration
  def self.up
    create_table :tipousers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :tipousers
  end
end
