feature 'results' do

  scenario 'computer selects rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer chose Rock"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer chose Paper"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer chose Scissors"
  end

  scenario 'game shows lose' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content "You lost!"
  end

  scenario 'game shows win' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content "You win!"
  end

  scenario 'game shows draw' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "You drew!"
  end
 end
