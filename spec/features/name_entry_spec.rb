feature 'Name Entry' do
  before(:each) { visit '/' }
  scenario 'Player can enter name' do
    expect(page).to have_content('Enter Your Name!')
    expect(page).to have_field('player_1_name')
  end
  context 'Page 2 tests' do
    before(:each) { sign_in_and_play }
    scenario 'Name is Displayed' do
      expect(page).to have_content('Jack')
      expect(page).to have_content('Computer')
    end
  end
end
