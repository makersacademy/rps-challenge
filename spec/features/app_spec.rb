feature 'Testing homepage' do
  scenario 'Can run app and check the homepage' do
    visit('/')
    expect(page).to have_content 'Hello!'
  end
end
