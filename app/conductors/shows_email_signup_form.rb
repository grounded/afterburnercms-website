require 'ostruct'
require 'afterburner/framework/base_conductor'

class ShowsEmailSignupForm < ::Afterburner::Framework::BaseConductor
  def call
    {:page => OpenStruct.new(data)}
  end

  protected
  def data
    {:title => "Sign up to receive a notification"}
  end
end
