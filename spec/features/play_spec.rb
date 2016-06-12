feature 'Play' do
  scenario 'starting a game' do
    sign_in
    click_button 'Start Playing'
    expect(page).to have_content "Crescenzo, please select you option"
  end

  scenario 'chose a move' do
    sign_in
    click_button 'Start Playing'
    click_button 'Paper'
    expect(page).to have_content 'this round'
  end
end
