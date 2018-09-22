require 'spec_helper'
require './app'

feature "Choose options" do
  scenario "Player is able to choose an option" do
    sign_in_and_play
    expect(page).to have_content "Choose an option to play:"
  end
end
