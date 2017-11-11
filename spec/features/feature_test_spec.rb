feature 'testing infrastructure' do
  scenario 'infrastructure works' do
    visit '/'
    expect(page).to have_content 'Infrastructure Working!'
  end
end
