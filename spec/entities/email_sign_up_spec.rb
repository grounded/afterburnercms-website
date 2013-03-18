require 'spec_helper'
require 'email_sign_up'

module Entities
  describe EmailSignUp do
    let(:email) { "garrett@afterburnercms.com" }
    let(:name) { "garrett" }
    let(:data) {
      {
        :email => "garrett@afterburnercms.com",
        :name => "garrett"
      }
    }
    subject { EmailSignUp.new(data) }

    describe "passing validations" do

      it "has an email" do
        subject.email.should == email
      end

      it "has a name" do
        subject.name.should == name
      end
    end

    describe "failing validations" do
      it "throws errors when no email provided" do
        expect {
          EmailSignUp.new({:email => "", :name => "garrett" })
        }.to raise_error(NoEmailProvided)
      end
    end

    it "can be hashified" do
      subject.to_hash.should == {:email => email, :name => name}
    end
  end
end
