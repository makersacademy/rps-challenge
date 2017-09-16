feature 'testing infrastructure' do
  scenario 'run check page' do
    visit('/')
    expect(page).to have_content 'HI'
  end
end
