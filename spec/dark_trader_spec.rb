require_relative '../lib/dark_trader'

describe "the hash_result method" do
  it "links a number in array to its content" do
    expect(n(1)).to eq({"BTC"=>"$8543.02"})
  end
end
