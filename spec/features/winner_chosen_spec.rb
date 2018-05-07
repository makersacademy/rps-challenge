feature 'a winner is chosen' do
  let(:name) { 'Will' }

  before do
    visit('/')
    click_link('Play')
    fill_in :name, with: name
    click_button('Confirm')
  end

  scenario 'player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    click_button('Rock')
    expect(page).to have_text("#{name} won!")
  end
end
