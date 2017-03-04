feature "Winner announced" do

  scenario "Announces Draw when both players select the same" do
    sign_in_and_play
    choose('rock')
    click_button('selected')
    choose('rock')
    click_button('selected')
    expect(page).to have_content 'Draw!'
  end

  scenario "Announces Player 1 as winner" do
    sign_in_and_play
    choose('paper')
    click_button('selected')
    choose('rock')
    click_button('selected')
    expect(page).to have_content 'Dave won!'
  end

  scenario "Announces Player 2 as winner" do
    sign_in_and_play
    sign_in_and_play
    choose('scissors')
    click_button('selected')
    choose('rock')
    click_button('selected')
    expect(page).to have_content 'Mittens won!'
  end

end
