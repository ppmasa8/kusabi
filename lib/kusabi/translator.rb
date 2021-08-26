
  class String
    def to_cuneiform
      hash = {
        # Alphabet
        a: ['12000'], b: ['1204D'], c: ['122EB'], d: ['12072'], e: ['1208A'], f: ['12137'], g: ['12116'],
        h: ['12129'], i: ['1213F'], j: ['12363'], k: ['121A0'], l: ['12292'], m: ['1222C'], n: ['12261'],
        o: ['120F0'], p: ['1204D'], q: ['122E1'], r: ['12292'], s: ['122E2'], t: ['122FC'], u: ['1230B'],
        v: ['1240A'], w: ['1227E'], x: ['1230B'], y: ['1227E'], z: ['1236A'],

        # Japanese Hiragana
        あ: ['12000'], い: ['1213F'], う: ['1230B'], え: ['1208A'], お: ['120F0'],
        か: ['12157'], き: ['121A0'], く: ['121AA'], け: ['121A0'], こ: ['120F0'],
        さ: ['12293'], し: ['122EB'], す: ['122E2'], せ: ['122EB'], そ: %w[12047 1202D],
        た: ['122EB'], ち: ['122FE'], つ: ['12305'], て: ['122FC'], と: ['12317'],
        な: ['1223E'], に: ['1224C'], ぬ: ['12261'], ね: ['12248'], の: ['12056'],
        は: ['12129'], ひ: ['1212D'], ふ: ['12137'], へ: ['1212D'], ほ: ['1219D'],
        ま: ['12220'], み: ['1222A'], む: ['1222C'], め: ['12228'], も: ['12172'],
        や: ['1227E'], ゆ: ['1227E'], よ: ['1227E'],
        ら: ['1228E'], り: ['12291'], る: ['12292'], れ: ['12291'], ろ: ['12112'],
        わ: ['1227E'], を: ['12240'], ん: ['12158'],
        が: ['120B5'], ぎ: ['12100'], ぐ: ['12116'], げ: ['12100'], ご: ['12038'],
        ざ: ['1235D'], じ: ['12363'], ず: ['1236A'], ぜ: ['12363'], ぞ: ['1202D'],
        だ: ['12055'], ぢ: ['12072'], づ: ['1207A'], で: ['12072'], ど: ['12054'],
        ば: ['12040'], び: ['12049'], ぶ: ['1204D'], べ: ['12041'], ぼ: ['12054'],
        ぱ: ['1227A'], ぴ: ['1227E'], ぷ: ['1204D'], ぺ: ['1227E'], ぽ: ['1209C'],

        # Japanese Katakana
        ア: ['12000'], イ: ['1213F'], ウ: ['1230B'], エ: ['1208A'], オ: ['120F0'],
        カ: ['12157'], キ: ['121A0'], ク: ['121AA'], ケ: ['121A0'], コ: ['120F0'],
        サ: ['12293'], シ: ['122EB'], ス: ['122E2'], セ: ['122EB'], ソ: %w[12047 1202D],
        タ: ['122EB'], チ: ['122FE'], ツ: ['12305'], テ: ['122FC'], ト: ['12317'],
        ナ: ['1223E'], ニ: ['1224C'], ヌ: ['12261'], ネ: ['12248'], ノ: ['12056'],
        ハ: ['12129'], ヒ: ['1212D'], フ: ['12137'], ヘ: ['1212D'], ホ: ['1219D'],
        マ: ['12220'], ミ: ['1222A'], ム: ['1222C'], メ: ['12228'], モ: ['12172'],
        ヤ: ['1227E'], ユ: ['1227E'], ヨ: ['1227E'],
        ラ: ['1228E'], リ: ['12291'], ル: ['12292'], レ: ['12291'], ロ: ['12112'],
        ワ: ['1227E'], ヲ: ['12240'], ン: ['12158'],
        ガ: ['120B5'], ギ: ['12100'], グ: ['12116'], ゲ: ['12100'], ゴ: ['12038'],
        ザ: ['1235D'], ジ: ['12363'], ズ: ['1236A'], ゼ: ['12363'], ゾ: ['1202D'],
        ダ: ['12055'], ヂ: ['12072'], ヅ: ['1207A'], デ: ['12072'], ド: ['12054'],
        バ: ['12040'], ビ: ['12049'], ブ: ['1204D'], ベ: ['12041'], ボ: ['12054'],
        パ: ['1227A'], ピ: ['1227E'], プ: ['1204D'], ペ: ['1227E'], ポ: ['1209C'],

        # TODO add number
      }

      result = []
      strings = downcase.split('')
      strings.each do |str|
        hash[str.to_sym] ? temp = hash[str.to_sym].join : temp = nil
        temp ? result << [temp.hex].pack("U") : result << str
      end
      result.join
    end


  end