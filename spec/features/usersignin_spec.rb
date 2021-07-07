feature "Sign in form" do
  scenario "user can sign in" do
    sign_in_and_play
    expect(page).to have_content 'Welcome Will!'
  end

end
