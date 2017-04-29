feature 'Playability feature Test' do

  it 'Has a single player game version against Ai' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors Single Player'
    expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
    fill_in 'name1', with: 'Pietro'
    select "Rock", :from => "weapon1"
    click_button 'Play!'
    expect(page).to have_content 'Pietro chose rock Watson chose scissors'
    expect(page).to have_content 'Pietro won!'
  end

  it 'Has a two player game version' do
    visit '/'
    click_link 'Go To Two Player Game'
    expect(page).to have_content 'Rock Paper Scissors Two Player'
    expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
    fill_in 'name1', with: 'Pietro'
    fill_in 'name2', with: 'Joanna'
    select "Rock", :from => "weapon1"
    select "Paper", :from => "weapon2"
    click_button 'Play!'
    expect(page).to have_content 'Pietro chose rock Joanna chose paper'
    expect(page).to have_content 'Joanna won!'
  end

end
