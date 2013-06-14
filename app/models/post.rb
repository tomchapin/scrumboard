class Post < ActiveRecord::Base

  # Scopes
  default_scope ->{ includes :children }

  # Attributes
  attr_readonly :user_id

  # Associations
  belongs_to :parent, class_name: 'Post'
  has_many :children, class_name: 'Post', foreign_key: :parent_id
  belongs_to :user

  # Callbacks
  before_validation :set_post_date, on: :create

  # Validations
  validates_uniqueness_of :user_id, scope: :post_date, on: :create
  validates_presence_of :user

  private

  def set_post_date
    self.post_date = Time.now
  end

  def top_level?
    parent.blank?
  end

end
