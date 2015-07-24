require 'rails_helper'

feature 'Home page' do

  scenario 'visit' do
    visit root_path
    expect(page).to have_title 'Pastry'
    expect(page).to have_content 'Pastry - Network Hosts Control'
  end

  scenario 'open list' do
    visit root_path
    click_link 'List'
    expect(current_path).to eq hosts_list_path
  end

  scenario 'open new' do
    visit root_path
    click_link 'New'
    expect(current_path).to eq new_host_path
  end
end
