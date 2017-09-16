feature 'testing infrastructure' do
  scenario 'run check page' do
    visit('/')
    expect(page).to have_content 'ENTER PLAYER NAME'
  end
end
