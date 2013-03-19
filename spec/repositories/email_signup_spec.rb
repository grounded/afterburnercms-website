require 'tiny_spec_helper'
require 'email_signup_repository'

describe EmailSignupRepository do
  subject { EmailSignupRepository }
  it "has a store method" do
    expect(subject).to respond_to(:store)
  end

  it "declares its entity kind to be an email_signup" do
    subject.entity_kind.should == :email_signup
  end
end
