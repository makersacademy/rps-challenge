require 'spec_helper'

RSpec.feature "Computer's turn", :type => :feature do
  before do
    sign_in_and_play
    click_button("Rock")
    click_button("Computer's choice")
  end
  scenario "show's computer's choice" do
    expect(page).to have_content("Computer picks: ")
  end
end
