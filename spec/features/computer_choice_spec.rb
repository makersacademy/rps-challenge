feature 'choose randomly' do
  scenario 'Show Computer choice --- Paper ' do
    register
    find('#Rock').click
    click_button('Submit')
    srand(67_809)
    expect(page).to have_content 'Computer has chosen Paper'
  end

  scenario 'Show Computer choice --- Scissors' do
    register
    find('#Rock').click
    click_button('Submit')
    srand(4)
    expect(page).to have_content 'Computer has chosen Scissors'
  end

end
