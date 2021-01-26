# frozen_string_literal: true

feature 'Entering player name' do
  scenario 'Displays game instructions' do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end

  scenario 'Displays "Let\'s Play!" button' do
    visit('/')
    expect(page).to have_button("Let's Play!")
  end

  scenario 'Takes name and starts game' do
    enter_name_and_play
    expect(page).to have_content('Kelly make your choice...')
  end

end
