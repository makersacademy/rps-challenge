feature 'Selecting a weapon' do
  before do
    register_and_play
  end

  context 'player 1 selects rock and cliks OK' do
    before do
      select 'Rock', from: 'weapon'
      click_button 'Submit'
    end

    scenario 'player 1 selects rock' do
      expect(page).to have_content "Sheldon: Rock"
    end

    scenario 'player 1 clicks OK' do
      click_button 'OK'
      expect(page).to have_content "Take a pick: "
    end
  end

  scenario 'player 1 selects paper' do
    select 'Paper', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Sheldon: Paper"
  end

  scenario 'player 1 selects scissors' do
    select 'Scissors', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content "Sheldon: Scissors"
  end
end
