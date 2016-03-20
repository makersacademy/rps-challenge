feature 'Shows a result' do
  scenario 'Player 1 beats Player 2' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Computer won!')
  end

  scenario 'Player 2 beats Player 1' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Adil won!')
  end
end
