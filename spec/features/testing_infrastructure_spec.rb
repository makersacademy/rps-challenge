feature 'testing infrastructure' do
  scenario 'run check page' do
    visit('/')
    expect(page).to have_content 'CHOOSE YOUR OPPONENT'
  end
end
