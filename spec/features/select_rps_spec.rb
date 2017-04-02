feature 'Select rock, paper, or scissors' do
  scenario 'View your choice after making a selection' do
    fill_in_and_submit
    choose('Rock')
    click_button ('OK')
    expect(page).to have_content("Freddy chose Rock")
  end

  scenario 'Player 1 views choice after making selection in 2 player' do
    fill_in_and_submit_2p
    choose('Rock')
    click_button ('OK')
    choose('Rock')
    click_button ('OK')
    expect(page).to satisfy {|page| page.has_content?("Freddy chose Rock") and page.has_content?("Lucy chose Rock")}
  end

end
