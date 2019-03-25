require './app'

feature 'Winner is declared' do
  scenario 'player chooses paper and computer chooses rock' do
    fill_in_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button 'Paper'
    expect(page).to have_content('You win!')
  end

  scenario 'computer chooses paper and player chooses rock' do
    fill_in_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button 'Rock'
    expect(page).to have_content('Computer wins!')
  end
end

feature 'Players draw' do
  scenario 'player and computer both choose rock' do
    fill_in_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button 'Rock'
    expect(page).to have_content("It's a draw!")
  end
end
