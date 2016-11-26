require 'spec_helper'

feature "player name", :type => :feature do
  scenario "can enter name for human player" do
    sign_in_and_submit_name
    expect(page).to have_content("A vs. HAL 9000")
  end
end
