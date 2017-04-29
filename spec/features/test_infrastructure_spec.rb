feature 'testing infrastructure' do
  scenario 'runs app and tests page content' do
    visit '/'
    expect(page).to have_content 'test'
  end
end
