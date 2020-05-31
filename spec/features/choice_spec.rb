feature 'choose a move' do
  scenario 'Anna chooses rock' do
    enter_name
    click_button('Rock')
    expect(page).to have_content 'Anna: Rock'
end
end
