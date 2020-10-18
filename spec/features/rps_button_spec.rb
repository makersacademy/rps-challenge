feature '/play should have rock paper and scissors buttons' do

  scenario 'player can select rock from a dropdown list' do
    sign_in_and_play
    page.select("Rock", :from => "options")
    click_button("Confirm")
    expect(page).to have_content "You chose rock"
  end

  scenario 'player can select paper from a dropdown list' do
    sign_in_and_play
    page.select("Paper", :from => "options")
    click_button("Confirm")
    expect(page).to have_content "You chose paper"
  end

  scenario 'player can select scissors from a dropdown list' do
    sign_in_and_play
    page.select("Scissors", :from => "options")
    click_button("Confirm")
    expect(page).to have_content "You chose scissors"
  end

end
