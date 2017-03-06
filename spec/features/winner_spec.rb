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
    choose('scissors')
    click_button('selected')
    choose('rock')
    click_button('selected')
    expect(page).to have_content 'Mittens won!'
  end

  scenario "Announces Player 2 as winner" do
    sign_in_and_play
    choose('lizard')
    click_button('selected')
    choose('scissors')
    click_button('selected')
    expect(page).to have_content 'Mittens won!'
  end

  scenario "Human player Vs Bot" do
    allow_any_instance_of(Bot).to receive(:selection).and_return('lizard')
    visit('/')
    fill_in :name_1, with: 'Dave'
    choose('bot')
    click_button 'start'
    choose('lizard')
    click_button('selected')
    expect(page).to have_content 'Draw!'
  end

end
