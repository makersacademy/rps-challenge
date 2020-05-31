feature 'player can enter their name' do

  scenario "the home page returns a successful status code" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario 'submitting name of player' do
    visit '/'
    fill_in :player_1, with: 'Player_1'
    click_button 'start game'
    expect(page).to have_content 'Rock-Paper-Scissors'
  end
end
