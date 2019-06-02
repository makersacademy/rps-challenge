feature 'marketeer can enter their name before the game begins' do
  scenario 'can enter the name and have it shown on the page' do
    visit('/')
    fill_in :player_name, with: "Egle" 
    click_on "Start game" 
    expect(page).to have_content("Welcome Egle!")
  end
end