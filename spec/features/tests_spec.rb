feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'ROCK PAPER SCISSORS!'
  end
end

feature 'Enter name' do
  scenario 'will see name in lights' do
    visit('/')
    fill_in :player_1_name, with: 'Bobo'
    click_button 'Submit'
    expect(page).to have_content 'Bobo get ready for Rock Paper Scissors!'
  end
end
