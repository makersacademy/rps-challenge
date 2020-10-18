feature "Multiple Players" do
  scenario 'Player 2 can win' do
    multi_sign_in
    select('Rock', from: 'selection')
    click_button "Let's Play"
    select('Paper', from: 'selection')
    click_button "Let's Play"
    expect(page).to have_content "Jack wins!"
  end

  scenario 'Player 1 can win' do
    multi_sign_in
    select('Paper', from: 'selection')
    click_button "Let's Play"
    select('Rock', from: 'selection')
    click_button "Let's Play"
    expect(page).to have_content "Rachel wins!"
  end

  scenario 'Players can tie' do
    multi_sign_in
    select('Paper', from: 'selection')
    click_button "Let's Play"
    select('Paper', from: 'selection')
    click_button "Let's Play"
    expect(page).to have_content "It's a tie!"
  end
end