require 'ostruct'
require 'interactors/builds_email_signup'

class AcceptsEmailSignupForm < ::Abc::BaseConductor
  def to_response
    { :email_signup => OpenStruct.new(data) }
  end

  def data
    options[:interface_classes][:email_signup].call(params[:email_signup])
  end

  protected
  attr_accessor :params, :options
  attr_writer :data
  def initialize(params, options)
    self.params  = params
    self.options = defaults.merge(options)
  end

  def defaults
    {
      :interface_classes => {
        :email_signup => BuildsEmailSignUp
      }
    }
  end

end
