feature 'player enters name and clicks submit' do
  scenario 'see player name on play page' do
    visit('/')
    puts page
    fill_in 'player_name', with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content('Welcome, Bob!')
  end
end
