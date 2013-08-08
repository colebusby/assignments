class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :group_id, :user_id

      t.timestamps
    end
  end
end
