feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end
