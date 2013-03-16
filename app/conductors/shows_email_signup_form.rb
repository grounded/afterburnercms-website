require 'ostruct'

class ShowsEmailSignupForm < ::Abc::BaseConductor
  def to_response
    {:page => OpenStruct.new(:title => "Sign up to receive a notification")}
  end
end
