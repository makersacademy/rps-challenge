
feature 'Testing the basics' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content
  end
end
