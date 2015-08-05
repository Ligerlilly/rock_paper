require('rspec')
require('./lib/beats?')

describe('String#beats?') do
  it('returns true if rock is an object and scissors is the argument') do
    expect("rock".beats?('scissors')).to(eq(true))
  end

  it('returns false if scissors is an object and rock is the argument') do
    expect("scissors".beats?('rock')).to(eq(false))
  end

  it('returns false if rock is an object and paper is the argument') do
    expect("rock".beats?("paper")).to(eq(false))
  end

  it 'returns true if paper is an object and rock is the argument' do
    expect('paper'.beats?('rock')).to eq(true)
  end
end
