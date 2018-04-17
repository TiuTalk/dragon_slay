require 'rails_helper'

RSpec.describe ApplicationMailer, type: :mailer do
  class TestMailer < ApplicationMailer
    def welcome(user)
      mail(to: user.email, subject: 'Welcome!', body: 'test')
    end
  end

  let(:user) { OpenStruct.new(email: 'user@example.com') }
  subject(:mail) { TestMailer.welcome(user) }

  it 'includes the defaults' do
    expect(mail.to).to eq([user.email])
    expect(mail.from).to eq(['from@example.com'])
    expect(mail.subject).to eq('Welcome!')
    expect(mail.body.encoded).to include('test')
  end
end
