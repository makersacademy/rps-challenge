feature 'Choose' do
  let(:computer) { double :computer }

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

  scenario 'chooses Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).not_to have_content('Ahsoka played Rock')
    expect(page).not_to have_content('Ahsoka played Scissors')
    expect(page).to have_content('Ahsoka played Paper')
  end

  scenario 'chooses Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).not_to have_content('Ahsoka played Rock')
    expect(page).not_to have_content('Ahsoka played Paper')
    expect(page).to have_content('Ahsoka played Scissors')
  end
end
