class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.date :est_pub_date
      t.integer :school_year
      t.boolean :current

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
