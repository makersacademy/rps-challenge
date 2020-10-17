feature 'Home Page' do
  scenario 'User enter the home page' do
    visit('/')
    expect(page).to have_content 'Enter your name to play'
  end
end

feature 'Name in lights' do
  scenario 'PLayer can see the name they have entered on the screen' do
    visit("/")
    fill_in :Player1, with: 'Beca'
    click_button 'Play'
    expect(page).to have_content 'Beca'
  end
end
