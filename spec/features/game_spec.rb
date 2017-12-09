feature 'Play Game' do
  scenario 'click on rock' do
    name_entry_and_play
    click_button 'Rock'
    expect(page).to have_content 'Rock vs'
  end
end
