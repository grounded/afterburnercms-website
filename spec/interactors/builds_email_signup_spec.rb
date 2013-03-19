require 'tiny_spec_helper'
require 'interactors/builds_email_signup'

describe BuildsEmailSignup do
  let(:data) { { :email => "garrett@afterburnercms.com", :name => "garrett" } }

  it "builds an email signup" do
    builder = BuildsEmailSignup.call(data)
    expect(builder).to be_kind_of(Entities::EmailSignup)
    builder.name.should == data[:name]
  end

end
