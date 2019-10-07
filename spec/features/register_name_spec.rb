feature 'register name' do
  scenario 'Allow user to enter his name' do
    register
    expect(page).to have_content("Celine")
  end
end
