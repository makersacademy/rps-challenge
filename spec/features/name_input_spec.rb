feature 'name input retained and presented to user' do
  scenario 'Fill in name on homepage, next webpage has name in lights' do
    sign_in_and_play
    expect(page).to have_content 'Marcus, ready to play Rock Paper Scissors???'
  end
end
