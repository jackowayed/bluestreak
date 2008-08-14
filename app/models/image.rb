class Image < ActiveRecord::Base
  belongs_to :article

  has_attachment  :storage => :file_system,
                  :max_size => 1.megabytes,
                  :thumbnails => { :thumb => '80x80>', :tiny => '40x40>' },
                  :processor => :ImageScience, # attachment_fu looks in this order: ImageScience, Rmagick, MiniMagick
                  :content_type => :image
  validates_as_attachment # ok two lines if you want to do validation, and why wouldn't you?

end
