feature 'register name' do
  scenario 'Register name before a game start' do
    register_to_play
    expect(page).to have_content "Hello Ben welcome to Rock, Paper, Scissors"
  end
end
