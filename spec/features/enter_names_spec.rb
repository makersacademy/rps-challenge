feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_enter_names
    expect(page).to have_content 'Mark vs. Computer'
  end
end