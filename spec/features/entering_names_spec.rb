feature 'enter your name and see it displayed' do
  scenario 'I can fill in my name' do
    visit '/'
    expect(page).to have_field("PlayerName")
  end
  scenario 'I can have my name displayed in lights' do
    enter_name
    expect(page).to have_content("Haz vs. John Cena")
  end
  scenario 'It tells me when it is my turn' do 
    enter_name
    expect(page).to have_content("Haz, make your move.")
  end
end
