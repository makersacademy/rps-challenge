require 'spec_helper'

feature 'Register player name' do
  scenario 'register player name to begin game' do
    sign_in_and_play
    expect(page).to have_content 'Hiro vs. Computer'
  end
end
