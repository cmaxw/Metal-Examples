class CreateStaticPages < ActiveRecord::Migration
  def self.up
    create_table :static_pages do |t|
      t.text :html
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :static_pages
  end
end
