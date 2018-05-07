feature 'computer makes a move' do
  let(:name) { 'Will' }

  before do
    visit('/')
    click_link('Play')
    fill_in :name, with: name
    click_button('Confirm')
  end

  scenario 'it chooses rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    click_button('Rock')
    expect(page).to have_text("Computer chose rock")
  end

  scenario 'it chooses paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    click_button('Rock')
    expect(page).to have_text("Computer chose paper")
  end

  scenario 'it chooses scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    click_button('Rock')
    expect(page).to have_text("Computer chose scissors")
  end
end
