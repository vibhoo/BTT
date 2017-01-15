class Book < ActiveRecord::Base

  has_many :book_ownerships
  has_many :users,:through => :book_ownerships

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
