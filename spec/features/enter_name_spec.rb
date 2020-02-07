feature 'Enter name' do
  scenario 'player submitting name' do
    sign_in
    expect(page).to have_content("Hi dave!")
  end
end