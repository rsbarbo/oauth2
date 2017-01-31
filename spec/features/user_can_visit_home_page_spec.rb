require "rails_helper"

RSpec.describe "homepage is complete and setup" do
  scenario "User can visit homepage" do

    visit "/"

    expect(current_path).to eq root_path
  end
end
