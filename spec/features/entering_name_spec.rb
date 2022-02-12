feature 'Marketeers being able to add their names before the game' do 
  scenario 'player adds name on home page' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end
end
