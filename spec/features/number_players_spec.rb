feature 'Select number of players' do
  scenario 'Gamers choose 2 player game' do
    visit ('/')
    expect(page).to have_content 'How many people are playing?'
  end

  scenario 'Gamers submit their option' do
    visit ('/')
    expect(page).to have_button 'Submit'
  end
end
