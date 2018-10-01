require 'spec_helper'
require './app'

feature "Entering player names" do
  scenario "Players enter their names at the beginning" do
    sign_in_and_play
    expect(page).to have_content "Dumbledore vs. The Machine"
  end
end
