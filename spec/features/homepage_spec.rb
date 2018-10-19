feature 'homepage' do
  scenario 'player can see welcome message' do
    visit('/')
    expect(page).to have_content("Rock, Paper, Scissors - Exciting!")
  end

  scenario 'player can enter his or her name' do
    visit('/')
    fill_in(:player_name, with: 'Irina')
    click_button('Start the game!')
    expect(page).to have_content("Hello, Irina")
  end
end
