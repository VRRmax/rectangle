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

    it do
      output = %x[./rectangle -1 3]
      expected =<<~OUTPUT
      Error: ${width} and ${length} arguments must be positive integers.
      Usage: ./rectangle ${width} ${length}
      OUTPUT
      expect(output).to eq expected
    end

    it do
      output = %x[./rectangle 3 0]
      expected =<<~OUTPUT
      Error: ${width} and ${length} arguments must be positive integers.
      Usage: ./rectangle ${width} ${length}
      OUTPUT
      expect(output).to eq expected
    end
  end

  it do
    output = %x[./rectangle 4 4]
    expected =<<~OUTPUT
    AAAA
    AAAA
    AAAA
    AAAA
    OUTPUT
    expect(output).to eq expected
  end
end
