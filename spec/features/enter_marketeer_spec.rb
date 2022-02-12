
feature 'Testing entry and display of players names' do
  scenario 'Test basic content when loading screen' do
    visit('/')
    expect(page).to have_content 'Enter Marketeer:'
  end
end
