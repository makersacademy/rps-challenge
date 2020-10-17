feature 'Enter Name' do
  scenario 'User can enter their name' do
    sign_in
    expect(page).to have_content "Hey Rachel!\nAre you ready to play?"
  end
end
