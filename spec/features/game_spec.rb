require './lib/rps'

feature '/game' do
  scenario 'you see your name' do
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
    expect(page).to have_content 'Welcome Emma!'
  end

  scenario 'it should have image to click' do 
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
  end 
end 

feature '/play' do
  scenario 'you know if you won or lost' do
    visit '/'
    fill_in 'player', with: 'Emma'
    click_button 'go!'
    click_button 'ROCK'
    expect(page).to have_text 'You'
  end 
end 