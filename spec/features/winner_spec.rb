feature 'Shows a result' do
  scenario 'Computer beats Player' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Computer won!')
  end

  scenario 'Player beats Computer' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content('Adil won!')
  end

  scenario 'Player picks same weapon as Computer' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content("It's a tie!")
  end
end
