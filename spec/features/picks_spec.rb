require "spec_helper"

RSpec.feature "RPS", :type => :feature do
  scenario "User enters their name" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_text("You have chosen Rock.")
  end
end
