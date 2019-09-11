feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'ROCK PAPER SCISSORS!'
  end
end

feature 'Enter name' do
  scenario 'will see name in lights' do
    sign_in_and_play
    expect(page).to have_content 'Bobo get ready for Rock Paper Scissors!'
  end
end

feature 'Choose an option' do
  scenario 'can pick from rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_all_of_selectors('#rock', '#paper', '#scissors')
  end
end
