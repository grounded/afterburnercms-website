require 'ostruct'
require 'interactors/builds_email_sign_up'
# require 'adapters/persistence/repositories/email_sign_up'

class AcceptsEmailSignupForm < ::Abc::BaseConductor
  def to_response
    { :email_signup => OpenStruct.new(data) }
  end

  def data
    build_email_signup
  end

  def build_email_signup
    options[:interface_classes][:email_signup].call(params[:email_signup])
  end

  protected
  attr_accessor :params, :options, :errors
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
      #:repository_class => ::Adapters::Persistence::Repositories::EmailSignUp
    }
  end

end
