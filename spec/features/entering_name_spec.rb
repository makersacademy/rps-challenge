feature 'Enter name' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Hello, Ruby!'
  end
end
