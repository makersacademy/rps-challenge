feature 'Enter name' do
  scenario 'player submitting name' do
    sign_in
    expect(page).to have_content("dave is playing!")
  end
end