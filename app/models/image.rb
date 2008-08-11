class Image < ActiveRecord::Base
  has_attachment :content_type => :image,
                 :storage => :db_file,
                 :max_size => 500.kilobytes,
                 #:resize_to => '320x200>',
                 :thumbnails => { :thumb => '100x100>' }

   validates_as_attachment


end
