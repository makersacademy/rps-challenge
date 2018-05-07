feature 'RPS' do
  scenario 'Add player name' do
    sign_in_and_play
    expect(page).to have_content("Roxu")
  end
end
