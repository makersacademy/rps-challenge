require 'spec_helper'

feature "Naming Players" do
  scenario "Expects the player to fill in their name" do
    sign_in_and_play
    expect(page).to have_content("Ali vs. The_Computer")
  end
end
