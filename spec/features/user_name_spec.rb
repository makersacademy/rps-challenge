feature 'Enter user name' do
  scenario 'user registration' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs. Computer'
  end
end