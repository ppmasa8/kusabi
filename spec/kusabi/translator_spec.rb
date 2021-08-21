RSpec.describe Kusabi do
  it "入力した文字が楔形文字になる" do
    str = "ssr"
    expect(str.to_cuneiform).to eql("𒀀𒀀𒀀")
  end
end