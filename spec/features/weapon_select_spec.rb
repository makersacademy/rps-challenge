feature 'select weapon' do
  scenario 'player selects rock for rock view' do
    name_and_play
    select 'Rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Andy, you have selected rock."
  end

  scenario 'player selects paper for paper view' do
    name_and_play
    select 'Paper', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Andy, you have selected paper."
  end

  scenario 'player selects scissors for scissor view' do
    name_and_play
    select 'Paper', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Andy, you have selected paper."
  end

end
