class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.datetime :created_at

      t.timestamps
    end
  end
end
