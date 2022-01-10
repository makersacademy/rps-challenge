feature 'randomising computer move' do

  before do
    allow_any_instance_of(Game).to receive(:make_choice)  { 'paper' }
  end

  scenario 'display computer move' do
    sign_in
    click_on 'rock'
    expect(page).to have_content 'Computer picked paper!'
  end
end
