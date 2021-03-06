class Article < ActiveRecord::Base
  belongs_to :issue
  has_many :images

  validates_presence_of :title, :section, :issue_id, :author, :author_position, :body, :front_rank, :section_rank

  validates_numericality_of :issue_id, :front_rank, :section_rank
end
