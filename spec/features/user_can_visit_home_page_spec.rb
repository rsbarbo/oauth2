require "rails_helper"

RSpec.describe "homepage is complete and setup" do
  scenario "User can visit homepage" do

    visit "/"

    expect(current_path).to eq root_path
  end

  scenario "expect home page to have content" do
    visit root_path

    expect(page).to have_content("Welcome to OAuth2 authenticating with social networks")
  end

  scenario "expect home page to have twitter authentication link" do
    visit root_path

    expect(page).to have_link("Twitter")
  end
end
