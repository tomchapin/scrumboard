class UserSession
  extend ActiveModel::Naming
  attr_accessor :email, :password

  def initialize(attrs={})
    attrs.each { |k, v| public_send k, v }
  end

end