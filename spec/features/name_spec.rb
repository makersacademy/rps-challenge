require 'spec_helper'

describe "player name entry", :type => :feature do
  scenario "the player's name appears on screen after entry" do
    submit_name
    expect(page).to have_content "Ganon"
  end
end
