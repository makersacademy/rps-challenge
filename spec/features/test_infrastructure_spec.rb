feature 'testing infrastructure' do
  scenario 'it tests the infrastructure' do
    visit("/")
    expect(page).to have_content "Welcome to Rps"
  end
end