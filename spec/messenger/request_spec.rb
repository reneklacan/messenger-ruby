module Messenger
  describe Request do
    let(:recipient_id) { rand(10) }
    let(:element) { Elements::Text.new(text: 'Test') }
    let(:action) { Elements::SenderAction.new(sender_action: 'typing_on') }

    describe '#new' do
      context 'is SenderAction' do
        it 'returns hash with recipient id and sender action' do
          expect(described_class.new(action, recipient_id).build)
              .to eq({ recipient: { id: recipient_id }, 'sender_action' => action.sender_action })
        end
      end

      context 'is SenderAction' do
        it 'returns hash with recipient id and sender action' do
          expect(described_class.new(element, recipient_id).build)
              .to eq({ recipient: { id: recipient_id }, message: { 'text' => element.text } })
        end
      end
    end
  end
end
