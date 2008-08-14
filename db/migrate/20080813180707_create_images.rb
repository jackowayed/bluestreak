class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :caption
      t.string :credit
      t.integer :article_id
      t.string :filename
      t.string :content_type
      t.integer :size
      t.integer :width
      t.integer :height
      t.integer :parent_id
      t.string :thumbnail
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
