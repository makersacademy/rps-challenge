feature 'Win or lose' do

  scenario 'Player wins/loses/draws against computer' do
    fill_in_and_submit
    choose('Rock')
    click_button('OK')
    expect(page).to satisfy {|page| page.has_content?("Freddy won!") or page.has_content?("Computer won!") or page.has_content?("It's a draw!")}
  end

  scenario 'Player wins against other player' do
    fill_in_and_submit_2p
    choose('Rock')
    click_button('OK')
    choose('Scissors')
    click_button('OK')
    expect(page).to have_content("Freddy won!")
  end

  scenario 'Player loses to other player' do
    fill_in_and_submit_2p
    choose('Rock')
    click_button('OK')
    choose('Paper')
    click_button('OK')
    expect(page).to have_content("Lucy won!")
  end

  scenario 'Player draws against other player' do
    fill_in_and_submit_2p
    choose('Rock')
    click_button('OK')
    choose('Rock')
    click_button('OK')
    expect(page).to have_content("It's a draw!")
  end
end
