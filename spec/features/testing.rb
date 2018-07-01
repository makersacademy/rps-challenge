feature 'testing' do
  context 'can run the app and check page content' do
    visit('/testing')
    expect(page).to have_content "this is a test page2"
  end
end
