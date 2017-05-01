feature 'Tests play page' do
  scenario 'Play page displays the names of the players' do
    sign_in_name
    click_button('Play Round 1')
    expect(page).to have_content('Simon vs. Machine')
  end

  scenario '/play page displays \'Round 1! Fight\' for 1st round' do
    sign_in_name
    click_button('Play Round 1')
    expect(page).to have_content('Round 1! Fight')
  end

  scenario '/play page has a drop down menu for choosing Rock, Paper or Scissors' do
    sign_in_name
    click_button('Play Round 1')
    expect(page).to have_select('RPS')
  end
end
