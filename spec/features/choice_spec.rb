feature 'choose a move' do
  scenario 'Anna chooses rock' do
    visit '/'
    fill_in('name', with: 'Anna')
    click_button('Start')
    click_button('Rock')
    expect(page).to have_content 'Anna: Rock'
end
end
