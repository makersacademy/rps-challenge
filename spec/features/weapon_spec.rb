feature 'Choosing a weapon' do
  scenario 'submitting choice' do
    visit('/')
    fill_in :player1, with: 'Ania'
    click_button 'Play!'
    choose('Rock')
    click_button 'Fight!'
    expect(page).to have_content 'You: rock'
  end
end
