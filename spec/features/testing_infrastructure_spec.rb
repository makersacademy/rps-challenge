feature 'Testing Infrastructure' do
  scenario 'Can run app and check the test page' do
    visit('/tester')
    expect(page).to have_content 'Testing is working!'
  end
end