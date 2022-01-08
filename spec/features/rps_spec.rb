feature 'name submission' do
  scenario 'player can register name' do
    visit('/')
    fill_in 'player_1_name', with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content("Hannah – it's time to play Rock, Paper, Scissors!")
  end
 end

