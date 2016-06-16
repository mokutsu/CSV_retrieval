class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.datetime :date
      t.integer :money
      t.integer :like
      t.integer :views
      t.integer :share

      t.timestamps null: false
    end
  end
end
