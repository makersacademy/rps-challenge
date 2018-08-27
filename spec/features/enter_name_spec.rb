feature 'Entering name' do
  scenario 'Can submit a name' do
    sign_in
    expect(page).to have_content 'Welcome Jimmy!'
  end
end
