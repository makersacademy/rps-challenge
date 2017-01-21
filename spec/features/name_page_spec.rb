require 'spec_helper'

feature "Player filling name" do

  scenario "Expect player to fill form" do
    sign_in_and_play
    expect(page).to have_content 'Let\'s play Lauren!'
  end

  scenario "Goes to new page to start play" do
    sign_in_and_play
    click_button 'Play'
    expect(page).to have_content 'You are now playing the computer'
  end
end
