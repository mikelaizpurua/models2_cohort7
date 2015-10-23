class AddEmailNotNilToUser < ActiveRecord::Migration
  def up
    User.where(email: nil).each do |user|
      user.email = "#{user.name}@wyncode.co"
      user.save
    end
    change_column :users, :email, :string, null: false
  end

  def down
    change_column :users, :email, :string, null: true
  end
end
