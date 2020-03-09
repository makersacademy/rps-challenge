feature 'player can sign in' do
  scenario 'there is an input field' do
    open_homepage
    expect(page).to(have_content('Sign in'))
  end
end
