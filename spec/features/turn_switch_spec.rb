feature 'Switches turns' do
  scenario 'A second player is asked to make a choice after player 1' do
    sign_in_and_submit
    click_on "Scissors"
    expect(page).to have_button "Rock"
  end
end
