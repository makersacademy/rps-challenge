feature 'Testing setup' do
  scenario 'test' do
    visit '/'
    expect(page).to have_content 'Test test 123'
  end
end
