require 'spec_helper'
load 'rectangle'

describe 'rectangle' do
  it do
    output = %x[./rectangle]
    expected =<<~OUTPUT
    ABBC
    B  B
    DBBE
    OUTPUT
    expect(output).to eq expected
  end
end
