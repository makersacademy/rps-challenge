feature 'declares the winner of the game' do
  scenario 'the user wins' do
    register
    click_button("Submit your choice")
    expect(page).to have_content 'You won!Congrats'
  end

  # scenario 'the user loses' do
  #   register
  #   click_button("Submit your choice")
  #   expect(page).to have_content 'Sorry, you lost!'
  # end
  #
  # scenario 'it is a draw' do
  #   register
  #   click_button("Submit your choice")
  #   expect(page).to have_content 'Draw! Play again!'
  # end
end
