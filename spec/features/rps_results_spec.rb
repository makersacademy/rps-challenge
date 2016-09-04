require 'spec_helper'

feature 'Show game result' do
  scenario "player's choice is visible" do
    add_name_and_submit
    click_button('Paper')
    expect(page).to have_content("Your choice was: paper")
  end

  scenario "computer's choice is visible" do
    allow_any_instance_of(Array).to receive(:sample) {:scissors}
    add_name_and_submit
    click_button('Paper')
    expect(page).to have_content("Computer's choice was: scissors")
  end

  scenario 'player can play again or new game with new player(s) can be started' do
    add_name_and_submit
    click_button('Rock')
    expect(find_button("Play again")).to be_visible
    expect(find_button("New player")).to be_visible
  end
end

feature 'Define result' do
  before(:each) do
    allow_any_instance_of(Array).to receive(:sample) {:scissors}
    add_name_and_submit
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

feature 'Show the number of wins of both players' do

  before(:each) do
    allow_any_instance_of(Array).to receive(:sample) {:scissors}
    add_name_and_submit
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
