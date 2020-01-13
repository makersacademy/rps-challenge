feature 'Enter name' do
  scenario 'submitting Player name' do
    sign_in
    expect(page).to have_content('Anne vs. Computer')
  end
end
