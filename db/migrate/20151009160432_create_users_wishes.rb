class CreateUsersWishes < ActiveRecord::Migration
  def change
    create_table :users_wishes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :wish, index: true
      t.timestamps null: false
    end
  end
end
