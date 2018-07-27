feature 'Name Entry' do
  before(:each) { visit '/' }
  scenario 'Player can enter name' do
    expect(page).to have_content('Enter Your Name!')
    expect(page).to have_field('player_1_name')
  end
  context 'Page 2 tests' do
    before(:each) { click_button('Play!') }
    scenario 'Name is Displayed' do
      expect(page).to have_content('Jack')
    end
  end
end
