feature 'RPS display' do

  scenario 'RPS display has RPS selections' do
    visit '/'
    enter_name
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'user selects rock' do
    visit '/'
    enter_name
    click_button 'Rock'
  end

end
