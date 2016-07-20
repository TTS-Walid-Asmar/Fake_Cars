class Vehicle < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>", :preserve_files => "false" },
  :default_url => "/images/:style/missing.png"

  attr_accessor :remove_photo
  before_validation { photo.clear if remove_photo == '1' }

  validates_attachment_content_type :photo,
  :content_type => /\Aimage\/.*\Z/

end
