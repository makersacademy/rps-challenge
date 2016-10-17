require "./app"

feature 'playing a game' do

  before do
    visit("/")
    fill_in :player, with: "Manu"
    click_button "Play"
  end

  scenario "Enter name player 1" do
    expect(page).to have_content("Manu vs Computer")
  end

  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end
