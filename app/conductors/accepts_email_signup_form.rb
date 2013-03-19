require 'ostruct'
require 'builds_email_signup'
require 'email_signup_repository'

class AcceptsEmailSignupForm < ::Abc::BaseConductor
  def to_response
    store!(data)
    { :email_signup => OpenStruct.new(data[:email_signup]) }
  end

  protected
  attr_accessor :params, :options, :errors, :interactors, :repositories
  attr_writer :data

  def initialize(params, options = {})
    self.params  = params
    self.options = defaults.merge(options)
    
    self.interactors = OpenStruct.new(self.options[:interactor_classes])
    self.repositories = OpenStruct.new(self.options[:repository_classes])
  end

  def defaults
    {
      :interactor_classes => { :email_signup => ::BuildsEmailSignup },
      :repository_classes => { :email_signup => ::EmailSignupRepository }
    }
  end

  def data
    {:email_signup => build_email_signup.to_hash }
  end

  def build_email_signup
    @email_signup ||= interactors.email_signup.call(params[:email_signup])
  end

  def store!(entities)
    entities.each_pair {|kind, attributes| repositories.send(kind).store(attributes) }
  end


end
