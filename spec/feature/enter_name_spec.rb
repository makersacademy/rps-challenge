feature 'Enter the players name' do
  scenario 'PLayer can enter their name and click submit' do
    sign_in_and_play
    expect(page).to have_content 'Sean vs. The Dark Web o.0'
  end
end
