feature 'Player move' do
  scenario 'player chooses move' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'player move when chosen' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Choice: Paper'
  end
end
