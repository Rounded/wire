class Component < ActiveRecord::Base
  belongs_to :page

  has_attached_file :image, 
    styles: { full: "1000x1000>", thumb: ["300x300#", :jpg] },
    default_url: "/assets/missing.jpg",
    url: "/system/:id/:style.:extension"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, attachment_presence: true, if: 'image.present?'

end
