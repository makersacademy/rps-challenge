feature 'Testing ifrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to respond_to
  end
end
