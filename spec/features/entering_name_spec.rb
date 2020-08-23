feature 'Name is displayed after entry' do
  scenario 'player1 enters name ' do
    visit '/'
    fill_in :player1, with: 'Yasmin'
    click_button 'Submit'
    expect(page).to have_content 'Yasmin what is your choice?'
  end
end
