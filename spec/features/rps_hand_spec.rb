feature 'Hand' do
  scenario 'can choose between rock, paper and scissors' do
    sign_in_and_play
    expect(page).to have_content "Fran's turn!"
    click_button 'Rock'
    expect(page).to have_content "Chris's turn!"
    click_button 'Scissors'
    expect(page). to have_content "The winner is... Fran!"
  end
end
