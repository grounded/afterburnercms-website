require 'ostruct'
require 'entities/email_signup'
require 'afterburner/framework/base_conductor'
require 'repositories/email_signup'

class AcceptsEmailSignupForm < ::Afterburner::Framework::BaseConductor
  def call
    save_email_signup
    data
  end

  protected
  def data
    {:email_signup => @saved_email_signup}
  end

  def email_signup
    Entities::EmailSignup.new params[:email_signup]
  end

  def save_email_signup
    @saved_email_signup = email_signup_repository.store email_signup.to_hash
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
