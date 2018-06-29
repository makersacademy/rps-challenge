require "./app.rb"

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Enter player name' do
  scenario 'Can submit name to play game' do
    visit('/')
    fill_in(:player1_name, with: 'Jay')
    click_button('Submit')
    expect(page).to have_content('Welcome Jay!')
  end

end
