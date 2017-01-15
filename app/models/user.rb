class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :book_ownerships, -> { where issue: true }, class_name: 'BookOwnership'
   has_many :books, :through => :book_ownerships, class_name: 'Book', :source => :book
            # :class_name => "Book",
            # :source => :book,
            # :conditions => ['book_ownerships.issue =?', false]
end
