feature 'Homepage' do
  scenario 'See what the game is called' do
    sign_in_and_play
    expect(page).to have_content "Rock, Paper, Scissors Game"
  end
end

feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content "Charly"
  end
end
