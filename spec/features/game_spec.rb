feature 'Game' do
	scenario 'choose rock' do
    sign_in_and_play
    click_button 'play'
    click_button 'rock'
  end
end


feature 'Game' do
	scenario 'choose paper' do
    sign_in_and_play
    click_button 'play'
    click_button 'paper'
  end
end

feature 'Game' do
	scenario 'choose scissors' do
    sign_in_and_play
    click_button 'play'
    click_button 'scissors'
  end
end
