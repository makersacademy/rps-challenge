feature 'playing a game of rps' do
  before do
    sign_in_and_play
  end
  scenario 'see game options' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
