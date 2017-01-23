require 'spec_helper'

feature 'allows two players to enter name' do
  scenario 'players enter names' do
    multiplayer_play
    expect(page).to have_content 'Mephistopheles\'s turn Faust is waiting'
  end
end
