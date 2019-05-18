feature "MakeMove" do

  scenario "choose rock" do
    sign_in_and_play
    choose("Rock")
    click_button 'Submit'
    expect(page).to have_content 'Halsey played Rock'
  end

  # scenario "choose paper" do
  #   sign_in_and_play
  #   click ("Paper")
  #   click_button 'Submit'
  #   expect(page).to have_content 'Halsey played Paper'
  # end
  #
  # scenario "choose scissors" do
  #   sign_in_and_play
  #   click ("Scissors")
  #   click_button 'Submit'
  #   expect(page).to have_content 'Halsey played Paper'
  # end
end
