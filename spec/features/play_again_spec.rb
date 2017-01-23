require 'spec_helper'

feature "Play again" do

  before do
    sign_in_and_play
  end

  scenario "Can play another round" do
    click_button 'Rock'
    click_button 'Replay'
    expect(page).to have_content("Player name: Player")
  end
end
