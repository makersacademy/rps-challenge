require './rps_app'
require 'spec_helper'

feature 'Testing player registers' do
  scenario 'tests that the user has submitted and stored their name' do
    player_names_submitted
    expect(page).to have_content("player registered, name: Adam")
  end
end
