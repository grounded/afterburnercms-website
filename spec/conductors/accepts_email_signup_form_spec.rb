require 'tiny_spec_helper'
require 'conductors/accepts_email_signup_form'

module Abc
  class BaseConductor
    def call(params, opts = {}); new.to_response; end;
  end
end

class MockEmailSignUp
  def self.call(data, options={}); data; end
end

describe AcceptsEmailSignupForm do
  subject { AcceptsEmailSignupForm }
  let(:params) { {:email_signup => {:email => "rob@afterburnercms.com" }} }
  let(:mocks) {
    {
      :interface_classes => {
        :email_signup => MockEmailSignUp
      }
    }
  }
  let(:result) { subject.call(params, mocks) }

  it "returns a hash" do
    expect(result).to be_kind_of Hash
  end

  it "returns a hash containing an email signup" do
    result[:email_signup].should respond_to(:email)
  end

  it "hands off its form data to the interactor" do
    mocks[:interface_classes][:email_signup].should_receive(:call)
    result
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
