feature 'arriving on the default page' do
  scenario 'should show a welcome message' do
    visit '/'
    expect(page).to have_content("Let's play Rock, Paper, Scissors")
  end
end

feature 'entering player names' do
  scenario 'should show a message for Player 1' do
    sign_in
    expect(page).to have_content("What is your selection, Laurence?")
  end

  scenario 'should show a message for Player 2' do
    sign_in
    expect(page).to have_content("What is your selection, Bob?")
  end
end
