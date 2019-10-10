feature 'Enter names' do
  scenario 'Enter two player names to sign in' do
    sign_in_and_play
    expect(page).to have_content('Farnaz', 'David')
  end
end
