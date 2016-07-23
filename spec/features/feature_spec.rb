feature "As a marketeer" do

  scenario "to see my name in lights, I Would like to register" do
    sign_in
    expect(page).to have_content "BENJAMIN!"
  end

  scenario "I am able to make game choices" do
    sign_in
    find :xpath, "//form/input[1][@name='player_choice']"
  end

  scenario "I can see the choice I have made" do
    sign_in
    click_radio_button
    expect(page).to have_content "ROCK"
  end

  scenario "I can see my opponent's choice" do
    sign_in
    click_radio_button
    find :xpath, "//p[@id='opponent_choice']", text: "THE INTERNET'S CHOICE :"
  end

  scenario "I can see who has won" do
    sign_in
    click_radio_button
    result = find :xpath, "//p[@id='the_winner']"
    result.has_text? # don't think this line is effective, finding alternative...
  end

  scenario "to verify I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in
    click_radio_button
    expect(page).to have_content "YOU ARE BENJAMIN!"
  end

  scenario "to verify I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in
    click_radio_button
    expect(page).to have_content "THE INTERNET, BOOO..."
  end

  scenario "to verify a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in
    click_radio_button
    expect(page).to have_content "A DRAW!"
  end

end
