feature 'Testing infrastructure' do
  scenario 'Runs app and checks page content' do
    visit '/'
    expect(page).to have_content 'Hello world!'
  end
end