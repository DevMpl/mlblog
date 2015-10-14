class CreateMlblogCategories < ActiveRecord::Migration
	
	def change
	    create_table :mlblog_categories do |t|
	      t.string :name
				t.string :slug
				t.string :status
	      t.integer :parent_id, :null => true, :index => true
	      t.integer :lft, :null => false, :index => true
	      t.integer :rgt, :null => false, :index => true

	      # optional fields
	      t.integer :depth, :null => false, :default => 0
	      t.integer :children_count, :null => false, :default => 0
				
				t.timestamps
				
	    end
	  end

	  def self.down
	    drop_table :mlblog_categories
	  end

end