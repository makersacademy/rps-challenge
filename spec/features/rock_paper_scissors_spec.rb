# spec/features/rock_paper_scissors_spec.rb

feature 'play "Rock, Paper, Scissors"' do
  scenario 'start the game' do
    sign_in_and_play
    expect(page).to have_content('Miho has entered into battle!')
  end
end
