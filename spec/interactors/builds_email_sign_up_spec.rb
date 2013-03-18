require 'tiny_spec_helper'
require 'interactors/builds_email_sign_up'

describe BuildsEmailSignUp do
  let(:data) {
    {
      :email => "garrett@afterburnercms.com", :name => "garrett"
    }
  }

  it "builds an email signup" do
    builder = BuildsEmailSignUp.call(data)
    expect(builder).to be_kind_of(Entities::EmailSignUp)
  end

end
