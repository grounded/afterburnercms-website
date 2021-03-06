require 'tiny_spec_helper'
require 'conductors/shows_email_signup_form'
require 'ostruct'

describe ShowsEmailSignupForm do
  let(:mocks) {{:presenter_classes => {:page => OpenStruct}}}
  let(:result) { ShowsEmailSignupForm.call({}, mocks) }

  it "returns a hash of presenters" do
    expect(result).to be_kind_of Hash
  end

  it "should include a page presenter" do
    result[:page].title.should == "Sign up to receive a notification"
  end
end
