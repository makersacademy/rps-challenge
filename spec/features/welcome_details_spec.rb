feature 'Welcome page details' do
  scenario 'Player name displayed' do
    sign_in_and_play
    expect(page).to have_content "Welcome Bruce, let's play!"
  end
end
