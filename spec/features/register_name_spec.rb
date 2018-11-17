feature 'register a name' do
  scenario 'displays the users name' do
    sign_in
    expect(page).to have_text "Welcome, Will!"
  end
end
