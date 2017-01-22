require 'spec_helper'

feature 'either player can win' do
  scenario 'player one can win' do
    multiplayer_play
    click_button 'Rock'
    click_button 'OK'
    click_button 'Scissors'
    click_button 'OK'
    expect(page).to have_content 'Mephistopheles is the winner!'
  end

  scenario 'player two can win' do
    multiplayer_play
    click_button 'Rock'
    click_button 'OK'
    click_button 'Paper'
    click_button 'OK'
    expect(page).to have_content 'Faust is the winner!'
  end
end
