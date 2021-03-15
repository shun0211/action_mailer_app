require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe 'send_mail' do
    subject(:mail) do
      described_class.with(name: 'さかい', to: "test@example.com").welcome.deliver_now
      ActionMailer::Base.deliveries.last
    end

    context 'when send_mail' do
      it { expect(mail.from.first).to eq('ss211.sabcabc12312395.18@gmail.com') }
      it { expect(mail.to.first).to eq('test@example.com') }
      it { expect(mail.subject).to eq('登録完了') }
    end
  end
end
