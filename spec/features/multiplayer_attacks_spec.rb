require 'spec_helper'

feature 'two players attack' do
  scenario 'player one can attack' do
    multiplayer_play
    click_button 'Rock'
    expect(page).to have_content 'Mephistopheles selected the Rock'
  end

  scenario 'player two can attack' do
    multiplayer_play
    click_button 'Rock'
    click_button 'OK'
    click_button 'Scissors'
    expect(page).to have_content 'Faust selected the Scissors'
  end
end
