class UseAddressNotZipCode < ActiveRecord::Migration
  def self.up
    remove_column :presents, :zip_code
    add_column :presents, :destination, :string
  end

  def self.down
    add_column :presents, :zip_code, :string
    remove_column :presents, :destination
  end
end
