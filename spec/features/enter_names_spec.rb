feature 'Enter names' do

  scenario 'single player mode: submitting names' do
    single_player_sign_in
    expect(page).to have_content 'Pedro vs. Computer'
  end

  scenario 'multiplayer mode: submitting names' do
    multiplayer_sign_in
    expect(page).to have_content 'Pedro vs. Trish'
  end
end
