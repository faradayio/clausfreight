class CreatePresents < ActiveRecord::Migration
  def self.up
    create_table :presents do |t|
      t.float :niceness
      t.string :zip_code
    end
  end

  def self.down
    drop_table :presents
  end
end
