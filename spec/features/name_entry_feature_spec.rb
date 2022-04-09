require_relative '../../app'

feature 'Player registration:' do
  scenario 'Single player can register their name before playing' do
    visit '/'
    fill_in 'Name', with: 'Captain Kirk'
    click_on 'Transport player to game start!'
  end
end