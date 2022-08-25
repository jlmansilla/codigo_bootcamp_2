class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.string :follower_name
      t.integer :entero
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
