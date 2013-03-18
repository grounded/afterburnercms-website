require 'spec_helper'

feature "Email signups" do
  before { Abc::Adapters.enable_datastore! }
  scenario "showing the form on GET" do
    visit new_email_signup_path
    within 'form' do
      expect(page).to have_text('Name')
      expect(page).to have_text('Email')
    end
  end

  scenario "getting the title from the repository" do
    title = "Sign up to receive a notification"
    Hyperion.save(:kind => :page, :title => title)
    visit new_email_signup_path
    within "h1" do
      expect(page).to have_text(title)
    end
  end

  scenario "submitting the form" do
    email = "rob@afterburnercms.com"
    visit new_email_signup_path
    fill_in "Email", :with => email
    click_button "Sign up"
    expect(page).to have_text("You signed up as rob@afterburnercms.com")
    Hyperion.find_by_kind(:email_signup, :filter => [[:email, '=', email]]).keys.should include(:email)
  end

end
