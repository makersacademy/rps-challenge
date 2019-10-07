feature 'accepts name entry' do
  xit do
    visit '/'
    fill_in 'Name', with: 'Simo'
    click_button 'Play'
    expect(player.name).to eq 'Simo'
  end
end
feature 'prints the name' do
  xit do

  end
end
