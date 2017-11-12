require 'capybara/rspec'

describe 'Rps', :type => :feature do

  context 'When starting a new page' do
    it 'should say hello to the player' do
      visit '/'
      expect(page).to have_content "Hello player! You're welcome to RPS"
    end

    it 'should have a form for the players' do
      visit '/'
      expect(page).to have_field('player')
    end
  end

end
