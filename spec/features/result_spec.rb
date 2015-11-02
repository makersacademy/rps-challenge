require 'spec_helper'

feature 'win - loss - draw combinations' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
  end

    scenario 'player loses' do
      visit '/'
      fill_in 'player_name', with: 'He-Man'
      click_button 'Submit'
      click_button 'rock'
      expect(page).to have_content("computer wins")
    end

    scenario 'player wins' do
      visit '/'
      fill_in 'player_name', with: 'Rebecca'
      click_button 'Submit'
      click_button 'scissors'
      expect(page).to have_content("you win")
    end

    scenario 'player draws' do
      visit '/'
      fill_in 'player_name', with: 'Rebecca'
      click_button 'Submit'
      click_button 'paper'
      expect(page).to have_content("Its a draw")
    end
end
