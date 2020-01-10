feature 'testing infrastructure' do
  scenario 'app runs, page says test' do
    visit '/'
    expect(page).to have_content 'test'
  end
end