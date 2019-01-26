require './rps'

RSpec.describe Rps do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to RPS")
  end

end
