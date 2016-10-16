require 'spec_helper'

feature 'View result' do
  scenario 'player wins' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:Scissors)
    choose('Rock')
    click_button "Let's do this!"
    expect(page).to have_content 'Frances wins!'
  end
  scenario 'player loses' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:Scissors)
    choose('Paper')
    click_button "Let's do this!"
    expect(page).to have_content 'The Computer wins!'
  end
  scenario 'player draws' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:Rock)
    choose('Rock')
    click_button "Let's do this!"
    expect(page).to have_content "It's a draw!"
  end
end
