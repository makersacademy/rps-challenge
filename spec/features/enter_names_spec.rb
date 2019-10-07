feature 'Enter names' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content "Welcome #{PLAYER_NAME}"
    expect(page).to have_content "Choose your move!"
  end
end
