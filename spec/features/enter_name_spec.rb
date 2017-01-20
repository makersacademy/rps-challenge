# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Player 1'
    click_button('Play!')
    expect(page).to have_content 'Hello Player 1, welcome to rock, paper, scissors!'
  end

end