feature "signing in" do
  scenario "input name and submit" do
    sign_in()
    expect(page.body).to have_content 'Welcome Ollie! Please select a move...'
  end
end
