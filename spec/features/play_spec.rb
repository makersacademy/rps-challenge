require 'capybara/rspec'
require_relative '../../app'
Capybara.app = RPS

feature 'play RPS' do
  before do
    sign_in_and_play
  end

  scenario 'player name should be displayed on next page' do
    expect(page).to have_content('Please select an option, Titus')
  end 

  scenario 'player can click Rock button' do
    expect(page).to have_content("Rock")
    find_button("Rock").click   
  end

  scenario 'player can click Paper button' do
    expect(page).to have_content("Paper")
    find_button("Paper").click   
  end
  
  scenario 'player can click Scissors button' do
    expect(page).to have_content("Scissors")
    find_button("Scissors").click   
  end
  
  scenario 'player can choose Rock' do
    click_button("Rock")
    expect(page).to have_content('You chose Rock')
    expect(page).not_to have_content('You chose Paper')
  end

  scenario 'player can choose Paper' do
    click_button("Paper")
    expect(page).to have_content('You chose Paper')
    expect(page).not_to have_content('You chose Scissors')
  end

  scenario 'player can choose Scissors' do
    click_button("Scissors")
    expect(page).to have_content('You chose Scissors')
    expect(page).not_to have_content('You chose Rock')
  end

  scenario 'player can click play again button' do
    click_button("Paper")
    find_button('Play again?').click
  end

end