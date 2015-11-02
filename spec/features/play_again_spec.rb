require 'spec_helper'

feature 'New Game' do
  scenario 'It let you play again' do
    click_button('play_again')
    expect(page).to eq ('/')
  end
end
