feature 'make selection' do
  scenario 'player selects R/P/S and is taken to result page' do
    visit '/'
    fill_in :player_name, with: 'Ralph'
    click_button 'Go!'
    select('Rock', from: 'select')
    click_button 'Play!'
    expect(page).to have_content 'You selected Rock'
  end
end
