feature 'Entering names' do
  scenario 'so that i can play a game of rock, paper, scissors' do
    visit('/')
    fill_in :name, with 'Frank'
    click_button 'Lets play!'
    expect(page).to have_content 'Player Frank, your turn!'
  end
end