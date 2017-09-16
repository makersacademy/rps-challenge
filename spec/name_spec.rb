feature 'player enters name' do
  scenario 'check that name is entered' do
    sign_in_and_play
    expect(page).to have_content "Joe thinks he can take you on!"
  end
end
