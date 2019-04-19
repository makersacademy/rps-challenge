feature 'Choose one from rps' do
  scenario 'choose Rock' do
    register
    find('#Rock').click
    click_button('Submit')
    expect(page).to have_content 'Pikachu has chosen Rock'
  end

  scenario 'choose Paper' do
    register
    find('#Paper').click
    click_button('Submit')
    expect(page).to have_content 'Pikachu has chosen Paper'
  end

  scenario 'choose Scissors' do
    register
    find('#Scissors').click
    click_button('Submit')
    expect(page).to have_content 'Pikachu has chosen Scissors'
  end

end
