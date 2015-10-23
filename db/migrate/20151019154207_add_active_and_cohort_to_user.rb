class AddActiveAndCohortToUser < ActiveRecord::Migration
  def change
    add_column :users, :active, :boolean
    add_column :users, :cohort, :integer
  end
end
