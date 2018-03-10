feature 'Enter name' do
  scenario 'entering player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to RockPaperScissors, Cleopatra!'
  end
end
