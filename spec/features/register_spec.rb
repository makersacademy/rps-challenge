describe 'RPS', :type => :feature do

feature 'Testing infrastructure' do
  scenario 'Page context exist if RPS is run' do
    visit('/')
    expect(page).to have_content 'Welcome To Rock, Paper and Scissors!'
  end
end

feature 'User can register name' do
  scenario 'Player is submitting name' do
  visit('/')
  fill_in :player_name, with: 'Dania'
  click_button 'Start Game'
  expect(page).to have_content 'Welcome Dania! Are you ready to rumble?'
  end
end

end
