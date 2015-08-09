require 'spec_helper'

feature 'Starting a new game' do
  feature 'player 1' do
    feature 'register name before playing online game' do
      scenario 'register name ' do
        visit '/'
        click_link 'New Game'
        expect(page).to have_content "What's your name?"
        our_name="Richard"
        fill_in "name", with: our_name
        click_button 'Submit'
        expect(page).to have_content "Hello, #{our_name}"
      end

      scenario 'Gives default name if none submitted' do
        visit '/'
        click_link 'New Game'
        click_button 'Submit'
        expect(page).to have_content "Hello, Player 1"
      end
    end
    feature 'be able to play rock/paper/scissors' do
      scenario 'select hand to play' do
          game = Game.new Player
          visit '/'
          click_link 'New Game'
          click_button 'Submit'
          click_button 'Start Game'
          find("option[value='rock']").click
          click_button 'Click to Confirm'
          expect(page).to have_content "You have selected:"
      end
    end
  end
end
