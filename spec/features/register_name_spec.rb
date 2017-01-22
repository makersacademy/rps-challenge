WELCOME_MESSAGE = "Rock, Paper and Scissors"

feature 'Enrolling a new game' do
  scenario 'Player register the game' do
    register_process
    expect(page).to have_text(WELCOME_MESSAGE)
  end
end
