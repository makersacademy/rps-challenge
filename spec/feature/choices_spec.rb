feature 'Player has different choices' do

  scenario 'Player can choose Rock' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Rock')
  end

  scenario 'Player can choose Paper' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Paper')
  end

  scenario 'Player can choose Scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_button('Scissors')
  end

  scenario 'If player chooses Paper and computer chooses rock, player wins' do
    allow(Item.items).to receive(:sample).and_return(Item.rock)
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button :Enter
    click_button :Paper
    puts page.body
    expect(page).to have_content('Tim wins!')
  end

end
