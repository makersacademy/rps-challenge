feature 'Name' do
  scenario 'can be entered and is displayed' do
    sign_in_and_play
    expect(page).to have_content 'Welcome, Mat!'
  end
end
