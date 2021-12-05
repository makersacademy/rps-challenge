require 'capybara/rspec'
require_relative '../../app'
Capybara.app = RPS

feature 'play RPS' do
  before do
    sign_in_and_play
  end

  scenario 'player name should be displayed on the next page' do
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

  scenario 'can display player 1 as the winner' do
    click_button("Paper")
    click_button("Rock")
    expect(page).to have_content("Titus wins")
  end

  scenario 'can display player 2 as the winner' do
    click_button("Rock")
    click_button("Paper")
    expect(page).to have_content("Chang wins")
  end

  scenario 'can display a draw' do
    click_button("Paper")
    click_button("Paper")
    expect(page).to have_content("It's a draw")
  end
  
  scenario 'player can click play again button' do
    click_button("Paper")
    click_button("Paper")
    find_button('Play again?').click
  end

  scenario 'player can click play again button and get redirected to play' do
    click_button("Paper")
    click_button("Paper")
    click_button('Play again?')
    expect(page).to have_current_path('/play')
  end

  scenario 'player can click change players button' do
    click_button("Paper")
    click_button("Paper")
    find_button('Change players?').click
  end

  scenario 'player can click change players button and get redirected to home' do
    click_button("Paper")
    click_button("Paper")
    click_button('Change players?')
    expect(page).to have_current_path('/')
  end

end
