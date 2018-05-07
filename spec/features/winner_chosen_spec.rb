feature 'a winner is chosen' do
  let(:name) { 'Will' }

  before do
    visit('/')
    click_link('Play')
    fill_in :name, with: name
    click_button('Confirm')
  end

  scenario 'player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('Rock')
    expect(page).to have_text("#{name} wins!")
  end

  scenario 'computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('Paper')
    expect(page).to have_text("Computer wins!")
  end

  scenario 'draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button('Rock')
    expect(page).to have_text("It's a draw!")
  end
end
