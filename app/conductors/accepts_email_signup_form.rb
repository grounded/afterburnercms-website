require 'ostruct'
require 'entities/email_signup'
require 'afterburner/framework/base_conductor'
require 'repositories/email_signup'

class AcceptsEmailSignupForm < ::Afterburner::Framework::BaseConductor
  def call
    persist
    binding.pry
    {:email_signup => persisted}
  end

  protected
  attr_accessor :persisted
  def data
    params[:email_signup]
  end

  def email_signup
    Entities::EmailSignup.new data
  end

  def persist
    self.persisted = Entities::EmailSignup.new(
      email_signup_repository.store(email_signup.to_hash)
    )
  end

  def defaults
    {
      :repositories => {
        :email_signup => ::Repositories::EmailSignup.new
      }
    }
  end

  def email_signup_repository
    repositories.email_signup
  end

end
