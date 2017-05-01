feature 'Testing /play page' do
  scenario '/play page displays the player name' do
    sign_in_name
    click_button('Play Round 1')
    expect(page).to have_content('Simon vs. Machine')
  end

  scenario '/play page displays \'Round 1! Fight\'' do
    sign_in_name
    click_button('Play Round 1')
    expect(page).to have_content('Round 1! Fight')
  end
end
