feature 'checking results' do
  scenario 'choosing rock' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    click_link('Rock')
    expect(page).to have_content('draw')
  end
  scenario 'choosing paper' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    click_link('paper')
    expect(page).to have_content('won')
  end
  scenario 'choosing scissors' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    click_link('scissors')
    expect(page).to have_content('lost')
  end
end

feature 'displaying results' do
  scenario 'showing current and computers selection' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    click_link('Rock')
    expect(page).to have_content('rock vs. rock')
  end

end
