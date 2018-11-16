feature 'Infrastructure test' do
  scenario 'can visit page' do
    visit '/'
    expect(page).to have_content 'Testing, testing, 1, 2, 3'
  end
end
