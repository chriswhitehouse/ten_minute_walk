require 'ten_minute_walk'

describe '#ten_minute_walk' do
  it 'should return false when journey is less than 10 mins' do
    expect(ten_minute_walk(['w','s'])).to eq false
  end

  it 'should return true when given a 10 mins journey which returns to its start point' do
    expect(ten_minute_walk(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq true
  end

  it 'should return false when given a 10 min journey that does not return to start point' do
    expect(ten_minute_walk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])). to eq false
  end

  it 'should return false when given a journey which is longer than 10 mins' do
    expect(ten_minute_walk(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n', 'w', 'e'])). to eq false
  end
end
