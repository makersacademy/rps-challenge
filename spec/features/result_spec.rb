feature 'display result' do

  let(:computer) { double :computer }
  
  scenario 'player beats computer' do
    sign_in_and_play
    click_button('ROCK')
    click_button('CONFIRM')
    allow(computer).to receive(:choose).and_return('scissors')
    expect(page).to have_content('COMPUTER WON')
  end
end
