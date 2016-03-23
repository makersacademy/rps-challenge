feature 'Players waiting' do
  scenario 'P1 waiting' do
    multiplayer_sign_in("Paul", "Not Paul")
    click_button("p1rockbutton")
    expect(page).to_not have_selector(:link_or_button, 'p1rockbutton')
    expect(page).to_not have_selector(:link_or_button, 'p1paperbutton')
    expect(page).to_not have_selector(:link_or_button, 'p1scissorsbutton')
  end

  scenario 'P2 waiting' do
    multiplayer_sign_in("Paul", "Not Paul")
    click_button("p2rockbutton")
    expect(page).to_not have_selector(:link_or_button, 'p2rockbutton')
    expect(page).to_not have_selector(:link_or_button, 'p2paperbutton')
    expect(page).to_not have_selector(:link_or_button, 'p2scissorsbutton')
  end
end
