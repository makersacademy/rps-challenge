feature 'Choices recorded' do
  scenario 'Player choice is recorded' do
    sign_in_and_play
    expect(page).to have_button 'rock'
  end
end
