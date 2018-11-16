feature 'Infrastructure test' do
  scenario 'can visit page' do
    visit '/'
    expect(page).to have_content 'Please enter your name'
  end
end
