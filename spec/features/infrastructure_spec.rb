feature 'Infrastructure' do
  scenario 'tests the testing infrastructure' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working'
  end
end
