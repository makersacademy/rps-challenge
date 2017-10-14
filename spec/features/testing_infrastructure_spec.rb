feature 'Testing infrastructure' do
  scenario 'Testing the tests are working' do
    visit '/register'
    expect(page).to have_content "Sign up here"
  end
end
