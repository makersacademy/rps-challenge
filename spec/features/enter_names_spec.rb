require './app'

feature 'Register name before game' do
  scenario 'player enters their name' do
    visit '/'
    expect(page).to have_content "Enter your name:"
  end

  scenario 'show name in lights' do
    sign_in_and_play
    expect(page).to have_content "Are you ready Riya?"
  end
end
