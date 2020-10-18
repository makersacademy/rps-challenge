feature '/play should have rock paper and scissors buttons' do

  scenario 'player can select scissors from a dropdown list' do
    sign_in_and_play
    page.select("Scissors", :from => "options")
    click_button("Confirm")
    expect(page).to have_content "The winner is:"
  end

end
