feature 'choice' do
  scenario 'player can choose rock' do
    sign_in_and_play
    expect(page).to have_button "Rock"
  end

  scenario 'player can choose paper' do
    sign_in_and_play
    expect(page).to have_button "Paper"
  end

  scenario 'player can choose scissors' do
    sign_in_and_play
    expect(page).to have_button "Scissors"
  end
end
