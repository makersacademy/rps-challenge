
feature 'The player can select from various moves' do
  scenario 'player submits name and can select their move' do
    enter_name_and_submit
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('You selected Rock!')
  end
end
