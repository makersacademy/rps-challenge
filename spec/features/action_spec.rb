describe 'Action page' do
  scenario "after selecting weapon we are taken to 'action' page" do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content "Action!"
  end

  scenario "displays player_1's name" do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content "Jonny"
  end

  scenario "displays player_2's name" do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content "Santa Claus"
  end

  scenario "displays player_1's chosen weapon" do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content :Paper
  end

  scenario "displays player_2's chosen weapon" do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    # Sort this out
    expect(page).to have_content :Stone
  end

end
