require 'spec_helper'

feature 'win - loss - draw combinations' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
  end

    scenario 'player loses' do
      sign_in_and_play
      click_button 'rock'
      expect(page).to have_content("paper wraps rock computer wins!!")
    end

    scenario 'player wins' do
      visit '/'
      fill_in 'Player1', with: 'Rebecca'
      click_button 'Submit'
      click_button 'scissors'
      expect(page).to have_content("scissors cuts paper Rebecca wins!!")
    end

    scenario 'player draws' do
      visit '/'
      fill_in 'Player1', with: 'Rebecca'
      click_button 'Submit'
      click_button 'paper'
      expect(page).to have_content("No body wins")
    end
end
