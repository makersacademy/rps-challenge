feature 'Testing infrastructure' do
  scenario 'Can run app and check webpage content' do
    visit('/')
    expect(page).to have_content 'Eureka, it works!'
  end
end
