require 'ostruct'
require 'entities/email_signup'
require 'afterburner/framework/base_conductor'

class AcceptsEmailSignupForm < ::Afterburner::Framework::BaseConductor
  def call
    save_email_signup

    {:email_signup => @saved_email_signup}
  end

  protected
  def data
    params[:email_signup]
  end

  protected

  def email_signup
    Entities::EmailSignup.new params
  end

  def save_email_signup
    @saved_email_signup = email_signup_repository.store email_signup.to_hash
  end

  private
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
