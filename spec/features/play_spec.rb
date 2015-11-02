require 'capybara'
require 'web_helpers'

feature 'choosing keyword' do

  scenario 'allows to see options' do

    register_and_play

    expect(page).to have_content('Please enter Rock, Paper or Scissors')

  end

  scenario 'allows to enter one of the options' do

    register_and_play
    fill_in('rps', with: 'Rock')
    click_on 'Shoot!'
    expect(page).to have_content('You have chosen Rock')

  end

end
