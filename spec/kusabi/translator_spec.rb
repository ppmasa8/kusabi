RSpec.describe Kusabi do
  context "Normal scenarios" do
    it "Japanese Hiragana translate to cuneiform" do
      str = "γγγ"
      expect(str.to_cuneiform).to eql("ππΏπ")
    end
    it "Japanese Katakana translate to cuneiform" do
      str = "γ’γ³γγ¦γ³"
      expect(str.to_cuneiform).to eql("πππππ")
    end
    it "English translate to cuneiform" do
      str = "Unknown"
      expect(str.to_cuneiform).to eql("ππ‘π π‘π°πΎπ‘")
    end
  end

  context "Abnormal scenarios" do
    it "When str include exception strings, escape it" do
      str = "!Unk@no#wn"
      expect(str.to_cuneiform).to eql("!ππ‘π @π‘π°#πΎπ‘")
    end
  end
end