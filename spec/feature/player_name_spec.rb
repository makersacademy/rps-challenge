feature 'Index page' do
  scenario 'user can input name' do
    sign_in
    expect(page).to have_content 'Welcome, test name!'
  end
end
