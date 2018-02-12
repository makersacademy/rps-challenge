feature 'form to enter players name' do
  scenario 'player enters their names' do
    visit('/')
    click_button('Single Player')
    expect(find('div.title')).to have_content('Rock Paper Scissors Game for One Player')
  end
end
