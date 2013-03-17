require 'ostruct'
require_relative '../conductors/shows_email_signup_form'
require_relative '../conductors/accepts_email_signup_form'
require 'abc/html/page_presenter'

class EmailSignupsController < ApplicationController
  def new
    @data = OpenStruct.new(ShowsEmailSignupForm.call(params))
  end

  def create
    # begin
    @data = OpenStruct.new(AcceptsEmailSignupForm.call(params))
    # rescue
    #   render :action => :new and return
    # end

    render :template => 'email_signups/thank_you'
  end

  protected
  def page_presenter
    Abc::Html::PagePresenter.new @data.page
  end
  helper_method :page_presenter
end
