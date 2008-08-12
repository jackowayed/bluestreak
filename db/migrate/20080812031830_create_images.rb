class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :caption
      t.string :credit
      t.integer :article_id
      t.string :parent_id
      t.string :filename
      t.string :path
      t.string :content_type
      t.integer :size
      t.integer :height
      t.integer :width
      t.string :thumbnail

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
