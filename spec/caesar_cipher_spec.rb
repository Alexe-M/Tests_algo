require_relative '../lib/caesar_cipher'

describe "string_into_array" do
  it "should return an array of characters" do
    expect(string_into_array("hello")).to eq(["h","e", "l", "l", "o"])
  end
end

  describe "letter_to_number" do
    it "should return an array of ASCII codes" do
      expect(letter_to_number(["a"])).to eq([97])
      expect(letter_to_number(["h", "e", "l", "l", "o"])).to eq([104, 101, 108, 108, 111])
      expect(letter_to_number(["w", "o", "r", "l", "d"])).to eq([119, 111, 114, 108, 100])
    end
  end

  describe "number_to_crypt_number" do
  it "should correctly apply the Caesar cipher shift" do
    expect(number_to_crypt_number([104, 101, 108, 108, 111], 5)).to eq([109, 106, 113, 113, 116])
    expect(number_to_crypt_number([119, 111, 114, 108, 100], 5)).to eq([98, 116, 119, 113, 105])
  end
end

  describe "crypt_number_to_crypt_letter" do
    it "should return the correct array of letters" do
      expect(crypt_number_to_crypt_letter([107, 104, 111, 111, 114])).to eq(["k", "h", "o", "o", "r"])
      expect(crypt_number_to_crypt_letter([124, 116, 119, 113, 105])).to eq(["|", "t", "w", "q", "i"])
    end
  end


  describe "crypt_array_to_crypt_string" do
    it "should return a string" do
      expect(crypt_array_to_crypt_string(["k", "h", "o", "o", "r"])).to eq("khoor")
      expect(crypt_array_to_crypt_string(["m", "o", "n", "s", "i", "e", "u", "r", " ", "&", " ", "m", "a", "d", "a", "m", "e"])).to eq("monsieur & madame")
    end
  end

