require 'spec_helper'

feature "Initial Points" do
  scenario "computer initializes with default wins" do
    sign_in_and_play
    expect(page).to have_content("The computer has 0 wins")
  end

end
