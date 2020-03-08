feature "Sign in form" do
  scenario "user can sign in" do
    visit ('/')
    fill_in('player1', with: 'Will')
    click_button('Submit')
    expect(page).to have_content 'Welcome Will!'
  end

end
