require_relative '../lib/dark_trader'

describe "what the hash_result method" do
it "spec" do 
        expect(table_test(10)).to eq([10])
        expect(table_test(25)).to eq([25])
        expect(table_test(100)).to eq([100])
        expect(table_test(1666)).to eq([1666])
    end
end
