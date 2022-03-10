feature 'hit points' do

  scenario 'view player 2s hit points' do
    sign_in_and_play
    expect(page).to have_css('.hp', text: 'HP 100')
  end 

end

feature 'attacking' do

  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_on 'ATTACK'
    expect(page).to have_content('Lats attacked Cats!')
  end

  scenario 'attacking player 2 reduces their hit points' do
    sign_in_and_play
    click_on 'ATTACK'
    expect(page).to have_css('.hp', text: 'HP 90')
  end

  scenario 'switches players after a turn' do
    sign_in_and_play
    click_on 'ATTACK'
    expect(page).to have_content("Cats, it's your turn to attack!")
  end


end