feature 'Registering names' do
  scenario 'Player name displayed before playing an online game' do
    sign_in_and_play
    expect(page).to have_content 'Winston'
  end
end
