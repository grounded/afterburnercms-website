require 'email_signup'

class BuildsEmailSignup < Abc::BaseInteractor
  attr_reader :email_signup
  attr_accessor :errors

  def to_response
    email_signup
  end

  protected
  def initialize(data, options = {})
    @email_signup = Entities::EmailSignup.new(data)
  end

end
