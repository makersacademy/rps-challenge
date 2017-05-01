feature 'Test name' do
  scenario 'player fills in name to play' do
    sign_in_and_play
    expect(page).to have_content('Jon vs. Computer')
  end
end
