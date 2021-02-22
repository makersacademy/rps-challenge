require_relative '../spec_helper'

feature 'play' do
  scenario 'player selects a move and gets outcome of game' do
    allow_any_instance_of(Computer).to receive(:move).and_return('rock')
    sign_in_and_play
    fill_in("move", with: 'scissors')
    click_button "Submit"
    expect(page).to have_content "Computer chose rock – you lose!"
  end
end
