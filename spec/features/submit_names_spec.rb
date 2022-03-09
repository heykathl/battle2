feature 'submitting names' do

  before do

  end

  scenario 'view configuration' do
    visit '/'
    expect(page).to have_content('Player 1')
    expect(page).to have_content('Player 2')
    expect(page).to have_field('player_1')
    expect(page).to have_field('player_2')
    expect(page).to have_button('Play')
  end

  scenario 'page should submit names' do
    visit '/'
    fill_in("player_1", with: "Lats")
    fill_in("player_2", with: "Cats")
    click_button 'Play'
    expect(page).to have_content('Lats v Cats')
  end
end

feature 'hit points' do

  before do
    visit '/'
    fill_in("player_1", with: "Lats")
    fill_in("player_2", with: "Cats")
    click_button 'Play'
  end

  scenario 'view player 2s hit points' do
    expect(page).to have_css('.hp', text: 'HP 100')
  end 

end