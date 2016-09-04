require 'spec_helper'

feature 'Show game result' do
  scenario "player 1's choice is visible" do
    splayer_add_name_and_submit
    click_button('Paper')
    expect(page).to have_content("Bob's choice was: paper")
  end

  scenario "computer's choice is visible" do
    allow_any_instance_of(Array).to receive(:sample) {:scissors}
    splayer_add_name_and_submit
    click_button('Paper')
    expect(page).to have_content("Computer's choice was: scissors")
  end

  scenario "player 2's choice is visible" do
    mplayer_add_names_and_submit
    click_button('Paper')
    click_button('Rock')
    expect(page).to have_content("Bob's choice was: paper")
    expect(page).to have_content("John's choice was: rock")
  end

  scenario 'player can play again or new game with new player(s) can be started' do
    splayer_add_name_and_submit
    click_button('Rock')
    expect(find_button("Play again")).to be_visible
    expect(find_button("New player")).to be_visible
  end

  scenario 'players can play again or new game with new player(s) can be started' do
    mplayer_add_names_and_submit
    click_button('Rock')
    click_button('Scissors')
    expect(find_button("Play again")).to be_visible
    expect(find_button("New player")).to be_visible
  end
end

feature 'Define result' do

  context 'in single player mode' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample) {:scissors}
      splayer_add_name_and_submit
    end

    scenario 'declares the player as the winner' do
      click_button('Rock')
      expect(page).to have_content('The winner is: Bob')
    end
    scenario 'declares the computer as the winner' do
      click_button('Paper')
      expect(page).to have_content('The winner is: Computer')
    end
    scenario 'declares the draw if choices are the same' do
      click_button('Scissors')
      expect(page).to have_content('Outcome is a tie')
    end
  end

  context 'in multiplayer mode' do
    before(:each) do
      mplayer_add_names_and_submit
    end

    scenario 'declares the player1 as the winner' do
      click_button('Rock')
      click_button('Scissors')
      expect(page).to have_content('The winner is: Bob')
    end
    scenario 'declares the player2 as the winner' do
      click_button('Scissors')
      click_button('Rock')
      expect(page).to have_content('The winner is: John')
    end
    scenario 'declares the draw if choices are the same' do
      click_button('Paper')
      click_button('Paper')
      expect(page).to have_content('Outcome is a tie')
    end
  end

end

feature 'Show the number of wins of both players' do

  before(:each) do
    allow_any_instance_of(Array).to receive(:sample) {:scissors}
    splayer_add_name_and_submit
  end

  scenario "values of winned games are 0 at game start" do
    expect(page).to have_content('Bob: 0 wins')
    expect(page).to have_content('Computer: 0 wins')
  end

  scenario "1 is added to player's number of winned games" do
    click_button('Rock')
    expect(page).to have_content('Bob: 1 wins')
    expect(page).to have_content('Computer: 0 wins')
  end

  scenario "1 is added to computer's number of winned games" do
    click_button('Paper')
    expect(page).to have_content('Bob: 0 wins')
    expect(page).to have_content('Computer: 1 wins')
  end
end
