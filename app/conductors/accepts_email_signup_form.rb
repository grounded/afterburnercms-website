require 'abc'
require 'ostruct'

class AcceptsEmailSignupForm < ::Abc::BaseConductor
  def to_response
    {:email_signup => OpenStruct.new(data)}
  end

  def data
    params[:email_signup]
  end

end
