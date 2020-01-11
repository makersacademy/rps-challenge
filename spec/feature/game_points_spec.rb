
feature 'Points' do
  before do
    sign_in_and_play
  end
  scenario 'Visability on Player and computer points' do
    expect(page).to have_content 'Player: 0'
    expect(page).to have_content 'Computer: 0'
  end

  scenario 'Clicks Rock Button' do
    click_button 'Rock'
    srand(3)
    expect(page).to have_content 'Player played Rock and Computer played Scissors'
    expect(page).to have_content 'Player: 1'
  end
end
