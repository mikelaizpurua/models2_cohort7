class AddCodeSchoolToUser < ActiveRecord::Migration
  def change
    add_reference :users, :code_school, index: true, foreign_key: true
  end
end
