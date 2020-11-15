feature 'Player chooses paper' do
  scenario 'Player can choose paper' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end
end
