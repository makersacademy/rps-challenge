feature 'Testing infrastucture' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastucture working!'
  end
end
