require 'ostruct'
# require 'app/conductors/shows_email_signup_form'
# require 'app/conductors/accepts_email_signup_form'

class EmailSignupsController < ApplicationController
  def new
    render :template => 'email_signups/new',
           :locals => ShowsEmailSignupForm.new(params).call
  end

  def create
    render :template => 'email_signups/thank_you',
           :locals => AcceptsEmailSignupForm.new(params).call
  end
end
