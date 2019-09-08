feature 'Enter names' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content "Welcome #{PLAYER_NAME}"
  end
end
