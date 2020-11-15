feature 'Player chooses scissors' do
  scenario 'Player can choose scissors' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end
end
