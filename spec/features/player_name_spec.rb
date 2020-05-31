feature 'player can enter their name' do

  scenario "the home page returns a successful status code" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario 'submitting name of player and weapon' do
    visit '/'
    name_and_weapon
    expect(page).to have_content "Rock-Paper-Scissors\nHi Nick, so you chose rock"
  end
end
