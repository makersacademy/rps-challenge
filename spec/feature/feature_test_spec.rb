require_relative '../web_helpers'

feature 'Feature: Single play' do
  scenario 'A user selects the single player mode' do
    visit("/")
    find('#sp').set(true)
    click_button("submit")
    expect(page).to have_content('Enter your name')
  end

  scenario 'A user is given the option to select r-p-s' do
    starting_solo
    expect(page).to have_content('Welcome Alex')
  end

  scenario 'A player selects r-p-s and plays the game' do
    starting_solo
    choose('rps', :match => :first)
    click_button("submit")
    expect(page).to have_content('Alex (rock) vs Computer')
  end
end

feature 'Feature: Multi play' do
  scenario 'A user selects the multi player mode' do
    visit("/")
    find('#mp').set(true)
    click_button("submit")
    expect(page).to have_content('Enter your name')
  end

  scenario 'two players are given the option to select r-p-s' do
    starting_multi
    expect(page).to have_content('Welcome Alex')
  end

  scenario 'two players select r-p-s and play the game' do
    starting_multi
    find('#rock').set(true)
    click_button("submit")
    find('#scissors').set(true)
    click_button("submit")
    expect(page).to have_content('*** The winner is: Alex *** ')
  end
end
