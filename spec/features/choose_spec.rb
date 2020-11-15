feature 'Choose' do
  context 'seeing the 3 play options' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_button('Rock')
      expect(page).to have_button('Paper')
      expect(page).to have_button('Scissors')
    end
  end

  scenario 'chooses Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).not_to have_content('Ahsoka played Paper')
    expect(page).not_to have_content('Ahsoka played Scissors')
    expect(page).to have_content('Ahsoka played Rock')
  end
end
