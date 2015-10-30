require 'capybara'
require 'web_helpers'

feature 'choosing keyword' do

  scenario 'allows to choose rock, paper or scissors' do

    register_and_play

    expect(page).to have_content('Please enter Rock, Paper or Scissors')

  end

end
