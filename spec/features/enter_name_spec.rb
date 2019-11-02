feature 'enter names' do
  scenario 'greets player by name after name is entered' do
    sign_in
    expect(page).to have_content 'Welcome Ginny'
  end
end
