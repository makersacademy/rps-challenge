feature 'results' do

  scenario 'computer selects rock' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:rock)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer has chosen Rock"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer has chosen Paper"
  end

  scenario 'computer selects paper' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "Computer has chosen Scissors"
  end
 end
