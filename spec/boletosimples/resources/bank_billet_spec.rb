require 'spec_helper'

describe BoletoSimples::BankBillet do
  before { BoletoSimples.establish_connection!(ENV['BOLETOSIMPLES_EMAIL'], ENV['BOLETOSIMPLES_PASSWORD'], {user_agent: 'Meu e-Commerce (meuecommerce@example.com)'}) }
  let(:) { BoletoSimples::BankBillet.new() }
  it { expect(client.path).to eq('/bank_billets') }
  describe :all do
    it { expect(bank_billets.all).to eq({}) }
  end
end
