feature 'Testing index page' do
  scenario 'Can run the app and check the index content' do
    visit '/'
    expect(page).to have_content 'Welcome to RPS: the Rock-Paper-Scissors game'
  end
end
