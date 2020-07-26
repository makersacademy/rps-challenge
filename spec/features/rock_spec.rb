require_relative '../spec_helper'
require_relative './web_helpers'

feature '#rock' do

  before 'playing vs computer' do
    homepage_sign_in
    select_rock
  end

  scenario 'presence of #Change turns' do
    expect(page).to have_button 'Change turns'
  end

  context 'Playing versus Computer' do
    scenario '#rock' do
      expect(page).to have_content(/Daniel played rock!/i)
    end
    scenario 'changes turns' do
      srand(2)
      change_turns
      expect(page).to have_content(/Computer played rock!/i)
    end

  end
end
