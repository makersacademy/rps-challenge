feature 'Player move' do
  scenario 'displays the chosen move of the player' do
    sign_in_and_play
    click_button 'Lets Play'
    find("option[value='Rock']").select_option
    click_button 'Confirm'
    expect(page).to have_content "You chose 'Rock' as your move!"
  end
end
