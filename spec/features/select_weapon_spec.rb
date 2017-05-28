
feature 'Select a weapon' do
  scenario 'player can view available weapons' do
    sign_in_and_play
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
