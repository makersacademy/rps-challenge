feature 'player clicks button to select their move' do
  scenario 'player chooses rock and sees their selection on the results page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Play'
    click_on 'Rock'
    expect(page).to have_content 'Pingu picked Rock'
  end

  scenario 'player chooses paper and sees their selection on the results page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Play'
    click_on 'Paper'
    expect(page).to have_content 'Pingu picked Paper'
  end

  scenario 'player chooses scissors and sees their selection on the results page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Play'
    click_on 'Scissors'
    expect(page).to have_content 'Pingu picked Scissors'
  end
  
end