require 'spec_helper'

describe Host do
  describe 'validations' do
    before do
      create :host, hostname: 'host1.example.com', macaddress: '00:11:22:33:44:55', ipaddress: '192.168.10.1'
    end

    context 'when hostname is not unique' do
      it 'is invalid' do
        another_host = build :host, hostname: 'host1.example.com', macaddress: '11:22:33:44:55:66', ipaddress: '192.168.10.2'
        expect(another_host).to be_invalid
        expect(another_host.errors[:hostname]).to eql(['has already been taken'])
      end
    end
  end
end
