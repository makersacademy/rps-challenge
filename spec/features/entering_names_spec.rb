feature 'enter your name and see it displayed' do
  scenario 'I can fill in my name' do
    visit '/'
    expect(page).to have_field("Player1_Name")
  end
  scenario 'I can have my name displayed in lights' do
    enter_name
    expect(page).to have_content("Haz vs. John Cena")
  end
  scenario 'Player 2 has their name displayed' do
    enter_multiplayer
    expect(page).to have_content("Haz vs. John Cena")
  end
  scenario 'It tells me when it is my turn' do 
    enter_name
    expect(page).to have_content("Haz, make your move.")
  end
  scenario 'It tells player 2 when it is their turn' do
    enter_multiplayer
    click_button 'Rock'
    expect(page).to have_content("John Cena, make your move.")
  end
end
