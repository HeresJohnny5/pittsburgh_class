require_relative 'function.rb'

RSpec.describe Algorithm do
  let (:algorithm) { Algorithm.new }

  describe "#fizz_buzz" do
    it "prints an entry: Mined as a string" do
      result = algorithm.fizz_buzz(3)
      expect(result).to eq("Mined")
    end

    it "prints an entry: Mined as a string" do
      result = algorithm.fizz_buzz(6)
      expect(result).to eq("Mined")
    end

    it "prints an entry: Mined as a string" do
      result = algorithm.fizz_buzz(129)
      expect(result).to eq("Mined")
    end

    it "prints an entry: Minds as a string" do
      result = algorithm.fizz_buzz(5)
      expect(result).to eq("Minds")
    end

    it "prints an entry: Minds as a string" do
      result = algorithm.fizz_buzz(10)
      expect(result).to eq("Minds")
    end

    it "prints an entry: Minds as a string" do
      result = algorithm.fizz_buzz(505)
      expect(result).to eq("Minds")
    end

    it "prints an entry: Mined Minds as a string" do
      result = algorithm.fizz_buzz(15)
      expect(result).to eq("Mined Minds")
    end

    it "prints an entry: Mined Minds as a string" do
      result = algorithm.fizz_buzz(30)
      expect(result).to eq("Mined Minds")
    end

    it "prints an entry: Mined Minds as a string" do
      result = algorithm.fizz_buzz(900)
      expect(result).to eq("Mined Minds")
    end

    it "prints an integer: 2 as a string" do
      result = algorithm.fizz_buzz(2)
      expect(result).to eq("2")
    end

    it "prints an integer: 48 Minds as a string" do
      result = algorithm.fizz_buzz(49)
      expect(result).to eq("49")
    end

    it "prints an integer: Mined Minds as a string" do
      result = algorithm.fizz_buzz(608)
      expect(result).to eq("608")
    end
  end
end
