require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(show_exceptions: false)

describe 'the rock_paper path', { type: :feature } do
  it 'processes the two user entries and returns winner' do
    visit '/'
    fill_in 'player_one', with: 'rock'
    fill_in 'player_two', with: 'scissors'
    click_button 'Send'
    expect(page).to have_content('Player one is the winner!')
  end

  it 'displays link to try again if inproper input is entered' do
    visit '/'
    fill_in 'player_one', with: 'cat'
    fill_in 'player_two', with: 'dog'
    click_button 'Send'
    expect(page).to have_content('Try again')
    click_link 'Try again'
    expect(page).to have_content("Player one enter Rock")
  end

  it 'displays link to try again if it is a tie' do
    visit '/'
    fill_in 'player_one', with: 'rock'
    fill_in 'player_two', with: 'rock'
    click_button 'Send'
    expect(page).to have_content('Try again')
    click_link 'Try again'
    expect(page).to have_content("Player one enter Rock")
  end
end
