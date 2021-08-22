RSpec.describe Kusabi do
  context "Normal scenarios" do
    it "Japanese Hiragana translate to cuneiform" do
      str = "あいう"
      expect(str.to_cuneiform).to eql("𒀀𒄿𒌋")
    end
  end

  context "Abnormal scenarios" do
    it "When str include exception strings, escape it" do
      str = "あいう英語"
      expect(str.to_cuneiform).to eql("𒀀𒄿𒌋英語")
    end
  end
end