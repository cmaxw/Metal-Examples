class CreateAffiliateRedirects < ActiveRecord::Migration
  def self.up
    create_table :affiliate_redirects do |t|
      t.string :path
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :affiliate_redirects
  end
end
