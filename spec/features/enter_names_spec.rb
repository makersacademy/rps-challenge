feature 'showing a welcome message' do
  scenario 'should show a welcome message when you arrive' do
    visit '/'
    expect(page).to have_content("Let's play Rock, Paper, Scissors")
  end
end

feature 'entering your name' do
  scenario 'should take you to the game page' do
    sign_in
    expect(page).to have_content("What is your selection, Laurence?")
  end
end
