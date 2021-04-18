feature 'Rock, Paper, Scissors' do
  scenario 'The player is presented with three options: rock, paper and scissors' do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end