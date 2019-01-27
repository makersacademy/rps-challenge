require "capybara/rspec"
require_relative "../../app"

feature 'Winner Decider' do
    scenario 'When I submit rock, I learn if I have won' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      enter_name_and_start_playing
      select 'Rock', from: 'player1_move'
      click_on("Confirm Selection")
      click_on("Find Out Winner")
      expect(page).to have_content "You are the winner!"
    end

    scenario 'When I submit rock, I learn if it is a draw' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      enter_name_and_start_playing
      select 'Rock', from: 'player1_move'
      click_on("Confirm Selection")
      click_on("Find Out Winner")
      expect(page).to have_content "It was a draw!"
    end

    scenario 'When I submit Rock, I learn if I lost' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        enter_name_and_start_playing
        select 'Rock', from: 'player1_move'
        click_on("Confirm Selection")
        click_on("Find Out Winner")
        expect(page).to have_content "You lost to the Computer"
    end

end
