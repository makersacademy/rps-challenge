require 'spec_helper'
require 'capybara'


feature 'Sign in' do

  scenario 'Players can sign in' do

    sign_in_and_play
    3.times do
      srand(126)
      play_rock
      click_link "next round"
    end
    expect(page).to have_content("Simon Wins the match")
  end
end
