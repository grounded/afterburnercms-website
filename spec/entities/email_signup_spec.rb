require 'tiny_spec_helper'
require 'entities/email_signup'

module Entities
  describe EmailSignup do
    let(:email) { "garrett@afterburnercms.com" }
    let(:name) { "garrett" }
    let(:data) {
      {
        :email => "garrett@afterburnercms.com",
        :name => "garrett"
      }
    }
    subject { EmailSignup.new(data) }

    it "has an email" do
      subject.email.should == email
    end

    it "has a name" do
      subject.name.should == name
    end

    it "can be hashified" do
      subject.to_hash.should == {:email => email, :name => name}
    end
  end
end
