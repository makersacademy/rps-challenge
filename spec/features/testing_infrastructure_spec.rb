feature 'Testing app setup' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Hello RPS!'
  end
end
