feature 'Player picks a move' do
  before { fill_name_and_submit }

  scenario 'Player chooses rock' do
    click_on 'Rock'
    expect(page).to have_content('Rock')
  end

  scenario 'Player chooses rock' do
    click_on 'Scissors'
    expect(page).to have_content('Scissors')
  end

  scenario 'Player chooses rock' do
    click_on 'Paper'
    expect(page).to have_content('Paper')
  end

end
