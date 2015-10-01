class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      t.string :title
      t.string :description
      t.datetime :published_at
      t.string :language

      t.timestamps
    end
  end
end
