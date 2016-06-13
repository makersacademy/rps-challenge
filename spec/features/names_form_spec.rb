feature 'fill in form with player name' do

  scenario 'enter name, then display the name on next page' do
    visit '/'
    fill_in('player_name', with: 'Hassan')
    click_button('Submit')
    expect(page).to have_content "Hassan vs. RPS-Bot"
  end

end
