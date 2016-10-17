require 'spec_helper'

feature 'View result' do

  scenario 'player wins' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    choose('Rock')
    click_button "Let's do this!"
    expect(page).to have_content 'Woohoo - you won!'
  end

  scenario 'player loses' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    choose('Paper')
    click_button "Let's do this!"
    expect(page).to have_content 'Sorry - you lost'
  end
  
  scenario 'player draws' do
    register_and_play
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    choose('Rock')
    click_button "Let's do this!"
    expect(page).to have_content "Ah man - you drew!"
  end
end
