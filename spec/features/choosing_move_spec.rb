feature 'choosing a move' do
  let(:name) { 'Will' }

  before do
    visit('/')
    click_link('Play')
    fill_in :name, with: name
    click_button('Confirm')
  end

  scenario 'rock' do
    click_button('Rock')
    expect(page).to have_text("#{name} chose rock")
  end

  scenario 'paper' do
    click_button('Paper')
    expect(page).to have_text("#{name} chose paper")
  end

  scenario 'scissors' do
    click_button('Scissors')
    expect(page).to have_text("#{name} chose scissors")
  end
end
