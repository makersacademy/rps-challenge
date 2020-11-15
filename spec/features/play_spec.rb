require 'capybara/rspec'

feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs.'
  end
  
  scenario 'submitting names' do
    multi_sign_in
    expect(page).to have_content 'Alex vs. Verity'
  end
  
end

feature 'starting a game' do
  scenario 'Selecting Rock' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end

feature 'Game has a winner' do
  scenario "allows a winner" do
    multi_sign_in
    choose('Paper')
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content("Basil Jet wins the game!")
  end
end
