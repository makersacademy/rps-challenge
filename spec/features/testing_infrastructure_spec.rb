feature 'Testing infrastructure' do
  scenario 'can check page contents' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
