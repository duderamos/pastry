require 'rails_helper'

feature 'Register hosts' do

  scenario 'valid hosts' do
    visit new_host_path
    fill_in 'Hostname', with: 'symphony.duderamos.com'
    fill_in 'Macaddress', with: '00:11:22:33:44:55'
    fill_in 'Ipaddress', with: '172.16.20.253'
    click_button 'Save'

    expect(page).to have_content('The machine symphony.duderamos.com has the 172.16.20.253 IP address configured on the NIC 00:11:22:33:44:55')
  end

  context 'with invalid data' do
    before do
      visit new_host_path
    end

    scenario 'empty Hostname' do
      fill_in 'Hostname', with: ''
      fill_in 'Macaddress', with: '00:11:22:33:44:55'
      fill_in 'Ipaddress', with: '172.16.20.253'
      click_button 'Save'

      expect(page).to have_content('Hostname can\'t be blank')
    end

    scenario 'empty Macaddress' do
      fill_in 'Hostname', with: 'symphony.duderamos.com'
      fill_in 'Macaddress', with: ''
      fill_in 'Ipaddress', with: '172.16.20.253'
      click_button 'Save'

      expect(page).to have_content('Macaddress can\'t be blank')
    end

    scenario 'empty Ipaddress' do
      fill_in 'Hostname', with: 'symphony.duderamos.com'
      fill_in 'Macaddress', with: '00:11:22:33:44:55'
      fill_in 'Ipaddress', with: ''
      click_button 'Save'

      expect(page).to have_content('Ipaddress can\'t be blank')
    end

    scenario 'invalid Macaddress' do
      fill_in 'Hostname', with: 'symphony.duderamos.com'
      fill_in 'Macaddress', with: '00:22:33:44:55'
      fill_in 'Ipaddress', with: '172.16.20.253'
      click_button 'Save'

      expect(page).to have_content('Macaddress is not a valid MAC address')
    end

    scenario 'invalid Ipaddress' do
      fill_in 'Hostname', with: 'symphony.duderamos.com'
      fill_in 'Macaddress', with: '00:22:33:44:55:66'
      fill_in 'Ipaddress', with: '172.16.20'
      click_button 'Save'

      expect(page).to have_content('Ipaddress is not a valid IP address')
    end

    scenario 'invalid Ipaddress - greater than 255' do
      fill_in 'Hostname', with: 'symphony.duderamos.com'
      fill_in 'Macaddress', with: '00:22:33:44:55:66'
      fill_in 'Ipaddress', with: '172.16.20.256'
      click_button 'Save'

      expect(page).to have_content('Ipaddress is not a valid IP address')
    end

  end
end
