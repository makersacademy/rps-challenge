feature 'Turn switcher' do

  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Dave's turn"
  end

  scenario 'after player1 picks' do
    sign_in_and_play
    click_on 'P1_Rock'
    expect(page).to have_content "Barry's turn"
    # expect(page).not_to have_content "Dave's turn"
  end
end
