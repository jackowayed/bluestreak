class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :section
      t.date :date
      #t.integer :school_year#, :default => 2008
      t.integer :issue_id
      t.string :author
      t.string :author_position
      t.text :body
      t.integer :front_rank, :default => -1
      t.integer :section_rank, :default => -1

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
