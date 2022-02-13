require 'capybara/rspec'

feature 'Players' do 
  scenario 'enter player information' do
    sign_in_and_play
    expect(page).to have_content 'Claire'
  end

  scenario "home page returned" do
    visit('/')
    expect(page).to have_content('Sign in to play')
  end

  scenario "name input on match page" do
    sign_in_and_play
    expect(page).to have_content('Game On Claire')
  end

  scenario "Player plays rock" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Claire played rock')
  end

  scenario "Player plays paper" do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('Claire played paper')
  end

  scenario "Player plays scissors" do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('Claire played scissors')
  end

end
