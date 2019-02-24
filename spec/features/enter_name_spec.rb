feature 'Enter name' do
  scenario 'Can run app and check player name' do
    sign_in_and_play
    expect(page).to have_content "Bob"
  end
end
