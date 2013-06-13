class Post < ActiveRecord::Base
  belongs_to :parent, class_name: 'Post'
  has_many :children, class_name: 'Post', foreign_key: :parent_id
  belongs_to :user
  attr_accessible :body

  default_scope ->{ includes :children }


end
