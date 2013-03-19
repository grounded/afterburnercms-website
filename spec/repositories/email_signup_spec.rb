require 'tiny_spec_helper'
require 'afterburner'
require 'repositories/email_signup'

describe EmailSignupRepository do
  it "has a store method" do
    expect(subject).to respond_to(:store)
  end

  it "declares its entity kind to be an email_signup" do
    pending
  end
end
