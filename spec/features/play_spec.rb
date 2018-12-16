require 'app'

feature '/play' do
  scenario 'shows the users name' do
    visit '/'
    fill_in 'player_name', with: 'Adam'
    select 'Rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'Adam'
  end

  scenario 'shows the users choice of Rock, Paper, Scissors' do
    visit '/'
    fill_in 'player_name', with: 'Adam'
    select 'Rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
  end
end
