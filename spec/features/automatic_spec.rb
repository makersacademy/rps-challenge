feature 'Machine' do
  scenario 'shows chosen weapon' do
    visit '/AI'
    message = find(:css, '#machine').text
    expect(choose_weapon).to include message
  end

  def choose_weapon
    [:ROCK, :PAPER, :SCISSORS].map {|weapon| 'The machine has chosen '+ @weapon.to_s + '!'}
  end
end
