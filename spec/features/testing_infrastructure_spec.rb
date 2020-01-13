feature 'Testing infrastructure' do
  scenario 'Run app and check homepage content' do
    visit('/')
    expect(page).to have_content 'initial page'
  end
end
