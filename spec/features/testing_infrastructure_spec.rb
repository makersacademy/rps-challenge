feature 'Testing infrastructure' do
  scenario 'Can run app and check content' do
    visit('/')
    expect(page).to have_content 'Built by Katrina!'
  end
end
