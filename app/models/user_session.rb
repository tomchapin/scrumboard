class UserSession
  include ActiveModel::Model
  attr_accessor :email, :password

  def initialize(attrs={})
    attrs.each { |k, v| public_send k, v }
  end

end