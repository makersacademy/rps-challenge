feature 'Marketeers being able to add their names before the game' do 
  scenario 'home page before player enters name' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'player enters names' do 
    sign_in_and_play
    expect(page).to have_content "Trushna"
  end
end
