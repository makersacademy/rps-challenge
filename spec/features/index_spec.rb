require 'spec_helper'

feature 'entering names' do
  scenario 'submitting names' do
    sign_in_and_play_one_player
    expect(page).to have_content "Summer vs The Mighty Computer"
  end
end
