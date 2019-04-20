#require 'spec_helper'

feature "player enters names and sees their name" do
  scenario "submitting names" do
    register_and_play
    expect(page).to have_content 'player_name'
  end
end
