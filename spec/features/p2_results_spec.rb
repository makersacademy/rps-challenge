feature '2P Results screen' do
  scenario 'Displays P1 win message' do
    multiplayer_sign_in("Paul", "Not Paul")
    click_button("p1rockbutton")
    click_button("p2scissorsbutton")
    expect(page).to have_content("Paul wins!")
  end

  scenario 'Displays P2 win message' do
    multiplayer_sign_in("Paul", "Not Paul")
    click_button("p1rockbutton")
    click_button("p2paperbutton")
    expect(page).to have_content("Not Paul wins!")
  end

  scenario 'Displays draw message' do
    multiplayer_sign_in("Paul", "Not Paul")
    click_button("p1scissorsbutton")
    click_button("p2scissorsbutton")
    expect(page).to have_content("It's a draw")
  end

end
