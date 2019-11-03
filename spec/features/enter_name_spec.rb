feature 'enter names' do
  # scenario 'player can enter their name and see it on screen' do
  #   visit '/'
  #   fill_in :player1, with: "Ellie"
  #   click_button("Submit")
  #   expect(page).to have_content "Ellie"
  # end

  scenario '2 players can both enter their names and see it on screen' do
    visit '/'
    fill_in :player1, with: "Ellie"
    fill_in :player2, with: "Jack"
    click_button("Submit")
    expect(page).to have_content "Ellie"
    expect(page).to have_content "Jack"
  end
end
