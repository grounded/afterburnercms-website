require 'entities/email_sign_up'

class BuildsEmailSignUp < Abc::BaseConductor
  attr_reader :email_sign_up
  attr_accessor :errors

  def to_response
    email_sign_up
  end

  def get_errors
    @errors
  end

  protected
  def initialize(data, options = {})
    @errors = []
    @email_sign_up = Entities::EmailSignUp.new(data)
  rescue Exception => e
    @errors << e
  end

end
