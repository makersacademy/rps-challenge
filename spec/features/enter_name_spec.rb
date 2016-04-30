feature 'Enter name' do
  scenario 'submitting a name' do
    sign_in_with_name
    expect(page).to have_content 'Emma'
  end
end
