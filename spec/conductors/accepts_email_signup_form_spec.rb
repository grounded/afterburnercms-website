require 'tiny_spec_helper'
require 'accepts_email_signup_form'

class MockInteractor
  def self.call(data, options={}); data; end
end

class MockRepository
  def self.store(obj); @obj = obj; end
  def self.search; [@obj]; end
end

describe AcceptsEmailSignupForm do
  subject { ::AcceptsEmailSignupForm }
  let(:data) { { :email => "rob@afterburnercms.com", :name => "Rob" } }
  let(:params) { { :email_signup => data } }

  let(:mocks) { {
    :interactor_classes => { :email_signup => MockInteractor },
    :repository_classes => { :email_signup => MockRepository } } }

  let(:result) { subject.call(params, mocks) }

  it "returns a hash" do
    expect(result).to be_kind_of Hash
  end

  it "returns a hash containing an email signup" do
    result[:email_signup].should respond_to(:email)
  end

  it "hands off its form data to the interactor" do
    continuer = double "Blah"
    continuer.stub!(:to_hash)
    mocks[:interactor_classes][:email_signup].should_receive(:call).with(data).and_return(continuer)
    result
  end

  context "when validations fail" do
    it "should set errors" do
      pending
    end
  end

  context "when validations are okay" do
    it "hands off data to the repository" do
      fake_entity = {:blah => "yep, blah"}
      conductor = subject.send(:new, params, mocks)
      conductor.stub!(:data).and_return({:email_signup => fake_entity})
      mocks[:repository_classes][:email_signup].should_receive(:store).with(fake_entity)
      conductor.to_response
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
