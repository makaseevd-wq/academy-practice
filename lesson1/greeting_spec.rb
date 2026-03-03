require 'rspec'
require_relative 'greeting'

RSpec.describe '#greeting' do
  it 'выводит сообщение для пользователя младше 18 лет' do
    allow_any_instance_of(Kernel)
      .to receive(:gets)
      .and_return('Артур', 'Микаелян', '17')

    expect { greeting }.to output(
      /Привет, Артур Микаелян. Тебе меньше 18 лет, но начать учиться программировать никогда не рано/
    ).to_stdout
  end

  it 'выводит сообщение для пользователя 18 лет и старше' do
    allow_any_instance_of(Kernel)
      .to receive(:gets)
      .and_return('Сильвестр', 'Андреевич', '18')

    expect { greeting }.to output(
      /Привет, Сильвестр Андреевич. Самое время заняться делом!/
    ).to_stdout
  end
end