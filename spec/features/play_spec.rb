feature 'playing a game of rps' do
  scenario 'see game choices' do
    sign_in_and_play
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
