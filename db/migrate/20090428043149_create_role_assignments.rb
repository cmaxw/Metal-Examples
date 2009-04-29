class CreateRoleAssignments < ActiveRecord::Migration
  def self.up
    create_table :role_assignments do |t|
      t.references :user
      t.references :role

      t.timestamps
    end
  end

  def self.down
    drop_table :role_assignments
  end
end
