feature 'Entering name on home page' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Welcome, Mabon!'
    expect(page).to have_content 'Choose whether to play vs a computer or your friend.'
  end
end
