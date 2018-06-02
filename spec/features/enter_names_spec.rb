feature 'Enter names' do
  scenario 'player can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Snoopy vs Computer'
  end
end
