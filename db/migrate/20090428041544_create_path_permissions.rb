class CreatePathPermissions < ActiveRecord::Migration
  def self.up
    create_table :path_permissions do |t|
      t.references :path
      t.references :role
      t.boolean :prohibited

      t.timestamps
    end
  end

  def self.down
    drop_table :path_permissions
  end
end
