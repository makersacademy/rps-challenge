
feature 'Name' do
  scenario 'ask for name' do
    visit '/'
    expect(page).to have_content "Enter your name:"
  end

  scenario 'show name in lights' do
    sign_in_and_play
    expect(page).to have_content "Are you ready Riya?"
  end
end
