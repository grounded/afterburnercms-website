require 'tiny_spec_helper'

module Abc
  class BaseConductor
    def call(params, opts = {}); new.to_response; end;
  end
end

require 'conductors/accepts_email_signup_form'
require 'entities/email_signup'

describe AcceptsEmailSignupForm do
  let(:params) do
    { :email_signup => {:email => "rob@example.com", :name => "Rob" } }
  end
  let(:mocks) { {} }
  let(:result) { AcceptsEmailSignupForm.new(params, mocks).call }

  it "returns a hash" do
    expect(result).to be_kind_of Hash
  end

  it "returns a containing an email signup" do
    result.keys.should include(:email_signup)
  end

  it "expects the email signup to be an entity" do
    result[:email_signup].should be_kind_of Entities::EmailSignup
  end

  it "hands off its form data to the interactor" do
    pending
  end

  context "when validations fail" do
    it "should set errors" do
      pending
    end
  end

  context "when validations are okay" do
    it "stores the data" do
      pending
    end
  end

  context "when storing is okay" do
    it "passes data back to the conductor" do
      # What is the output of subject.call? Is it expected?
      pending
    end
  end

  context "when storing isn't okay" do
    it "raises an error" do
      pending
    end
  end
end
