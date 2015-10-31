require 'spec_helper'

feature 'user management' do

  scenario 'player1 can register their name' do
    sign_in_and_play
    expect(page).to have_content("He-Man vs Computer")
  end

end
