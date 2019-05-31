feature 'Enter player name' do
  scenario 'Can submit a form to check name and display on screen' do
    sign_in_and_play
    expect(page).to have_content("Player1")
  end
end

feature 'Player presented with choices' do
  scenario 'displays a choice of Rock' do
    sign_in_and_play
    expect(page).to have_content("Rock")
  end

  scenario 'displays a choice of Paper' do
    sign_in_and_play
    expect(page).to have_content("Paper")
  end

  scenario 'displays a choice of Scissors' do
    sign_in_and_play
    expect(page).to have_content("Scissors")
  end
end

feature 'Player selects choice' do
  scenario 'can submit player\'s choice' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content("Your choice: Scissors")
  end
end

feature '' do
  scenario '' do
  end
end

# Test template:

# feature '' do
#   scenario '' do
#
#   end
# end
