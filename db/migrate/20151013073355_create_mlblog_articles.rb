class CreateMlblogArticles < ActiveRecord::Migration
  def change
    create_table :mlblog_articles do |t|
      t.string :title
      t.string :url
      t.string :status
			t.string :category_id
      t.datetime :opened_at
      t.datetime :closed_at
      t.text :text

      t.timestamps
    end
  end
end
