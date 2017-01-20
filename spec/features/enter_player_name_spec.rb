require 'spec_helper'

feature 'Entry form'  do
  scenario 'displays player name' do
    sign_in_and_play
    expect(page).to have_content('Player')
  end
end
