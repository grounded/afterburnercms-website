require 'ostruct'
# require 'app/conductors/shows_email_signup_form'
# require 'app/conductors/accepts_email_signup_form'

class EmailSignupsController < ApplicationController
  def new
    @data = OpenStruct.new(ShowsEmailSignupForm.new(params).call)
  end

  def create
    # begin
    @data = OpenStruct.new(AcceptsEmailSignupForm.new(params).call)
    # rescue
    #   render :action => :new and return
    # end

    render :template => 'email_signups/thank_you'
  end
end
