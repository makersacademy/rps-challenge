feature 'form to enter players name' do
  scenario 'player enters their names' do
    visit('/')
    expect(find('div.title')).to have_content('Ultimate Rock Paper Scissors Game')
  end
end
