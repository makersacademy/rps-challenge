feature 'test infrastructure' do
  scenario 'can run app and check content' do
    visit '/test'
    expect(page).to have_content("Test")
  end
end
