class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
