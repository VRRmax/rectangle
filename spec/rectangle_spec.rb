require 'spec_helper'
load 'rectangle'

describe 'rectangle' do
  context 'with errors' do
    it do
      output = %x[./rectangle 1]
      expected =<<~OUTPUT
      Error: Wrong arguments
      Usage: ./rectangle ${width} ${length}
      OUTPUT
      expect(output).to eq expected
    end

    it do
      output = %x[./rectangle 1 2 3]
      expected =<<~OUTPUT
      Error: Wrong arguments
      Usage: ./rectangle ${width} ${length}
      OUTPUT
      expect(output).to eq expected
    end
  end

  it do
    output = %x[./rectangle 1 2]
    expected =<<~OUTPUT
    lol
    OUTPUT
    expect(output).to eq expected
  end
  xit do
    output = %x[./rectangle 4 4]
    expected =<<~OUTPUT
    ABBC
    B  B
    DBBE
    OUTPUT
    expect(output).to eq expected
  end
end
