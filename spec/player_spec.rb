require './app'

describe Player do

  feature 'Testing framework' do
    scenario 'Testing' do
      visit('/')
      expect(page).to have_content('Hi')
    end
  end
end
