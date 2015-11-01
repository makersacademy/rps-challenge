feature 'player can enter their name' do
  scenario 'enter name and click submit' do
    sign_in_and_play
    expect(page).to have_content "Welcome, Mahmud"
  end
end
