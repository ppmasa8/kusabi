# Kusabi

RubyGems: https://rubygems.org/gems/kusabi

English 

This gem allows you to convert alphabet(unimplemented) or Japanese characters (hiragana and katakana) into cuneiform.

Warning: As this gem is under development, major changes may be made to the master branch.

日本語

このgemはアルファベットやひらがな・かたかなを楔形文字に変換できるようにするものです。

開発中のため、予告なく大きな変更が実装されることがあります。


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kusabi'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install kusabi

## Usage Example

"Unknown".to_cuneiform => 𒌋𒉡𒆠𒉡𒃰𒉾𒉡

"!Unk@no#wn".to_cuneiform => !𒌋𒉡𒆠@𒉡𒃰#𒉾𒉡

"アンノウン".to_cuneiform => 𒀀𒅘𒁖𒌋𒅘

"アンノウン?".to_cuneiform => 𒀀𒅘𒁖𒌋𒅘?

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kusabi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/kusabi/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Author

https://github.com/ppmasa8

## References for translating cuneiform(Sumer)
Japanese: https://ja.wikipedia.org/wiki/%E6%A5%94%E5%BD%A2%E6%96%87%E5%AD%97

Number: https://en.wikipedia.org/wiki/Babylonian_cuneiform_numerals
