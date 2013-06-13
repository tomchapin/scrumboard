require 'mail'

class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    return if value.nil?
    unless valid_email?(value)
      record.errors.add attribute, (options[:message] || "`#{value}` is not a valid email.")
    end
  end

  private

  def valid_email?(value)
    parsed = Mail::Address.new(value)
    parsed.address == value && parsed.local != parsed.address
  rescue Mail::Field::ParseError
    false
  end

end