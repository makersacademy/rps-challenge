feature 'marketeer can choose between rock, paper and scissors' do
  scenario 'marketeer can choose rock' do
    visit('/')
    fill_in :player_name, with: "Egle" 
    click_on "Start game"
    click_on "Rock" 
    expect(page).to have_content("You have chosen: Rock")
  end
end