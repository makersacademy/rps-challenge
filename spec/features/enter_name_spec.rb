feature 'after clicking play' do
  scenario 'name is displayed' do
    sign_in
    expect(page).to have_content 'Welcome Bob'
  end
end
