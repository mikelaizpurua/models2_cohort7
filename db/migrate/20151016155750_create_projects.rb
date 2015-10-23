class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :github_url
      t.string :url
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
