feature 'Play rock, paper, scissors' do
  before do
    visit('/')
    fill_in :player_name, with: 'Kirt'
    click_button 'Submit'
  end

  scenario 'shown rock, paper or scissors after submitting name' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'can check rock, paper or scissors' do
    expect(page).to have_selector("input[type=radio][value=rock]")
    expect(page).to have_selector("input[type=radio][value=paper]")
    expect(page).to have_selector("input[type=radio][value=scissors]")
  end
end
