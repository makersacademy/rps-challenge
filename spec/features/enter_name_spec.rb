feature 'Entering name on home page' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Welcome, Mabon!'
    expect(page).to have_content 'Press play to begin.'
  end
end
