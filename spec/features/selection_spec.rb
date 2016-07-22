feature 'Selecting' do
  scenario 'Rock' do
    visit('/')
    fill_in :player, with: "Aga"
    click_button "Play"
    click_button "Rock"
    expect(page).to have_content "Aga: Rock"
  end
  #
  # scenario 'Rock' do
  #   visit('/')
  #   fill_in :player, with: "Aga"
  #   click_button "Play"
  #   click_button "Paper"
  #   expect(page).to have_content "Aga: Paper"
  # end
  #
  # scenario 'Rock' do
  #   visit('/')
  #   fill_in :player, with: "Aga"
  #   click_button "Play"
  #   click_button "Scissors"
  #   expect(page).to have_content "Aga: Scissors"
  # end
end
