require 'spec_helper'

feature 'win - loss - draw combinations' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
  end

    scenario 'player loses' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content("Paper wraps Rock computer wins!!")
    end

    scenario 'player wins' do
      visit '/'
      fill_in 'Player1', with: 'Rebecca'
      click_button 'Submit'
      click_button 'Scissors'
      expect(page).to have_content("Scissors cuts Paper Rebecca wins!!")
    end

    scenario 'player draws' do
      visit '/'
      fill_in 'Player1', with: 'Rebecca'
      click_button 'Submit'
      click_button 'Paper'
      expect(page).to have_content("No body wins")
    end
end
