feature 'Name entry' do
  scenario 'displays player name' do
    sign_in_and_play
    expect(page).to have_content "You're up, Bejlo!"
  end
end
