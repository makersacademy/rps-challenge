feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content 'testing'
  end
end
