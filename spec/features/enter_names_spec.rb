feature 'Enter names' do
  scenario 'player can enter their name' do
    visit('/')
    fill_in :player, with: "Snoopy"
    click_button 'Submit'
    expect(page).to have_content 'Snoopy vs Computer'
  end
end
