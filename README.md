# C8dasm

`c8dasm` is a utility to desassemble a Chip8 binary file

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'c8dasm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install c8dasm

## Usage

    $ c8dasm chip8file

## Standard Chip-8 Instructions (What's remain to do)

[x] 00E0 - CLS
[x] 00EE - RET
[ ] 0nnn - SYS addr
[x] 1nnn - JP addr
[x] 2nnn - CALL addr
[x] 3xkk - SE Vx, byte
[x] 4xkk - SNE Vx, byte
[ ] 5xy0 - SE Vx, Vy
[x] 6xkk - LD Vx, byte
[x] 7xkk - ADD Vx, byte
[ ] 8xy0 - LD Vx, Vy
[ ] 8xy1 - OR Vx, Vy
[x] 8xy2 - AND Vx, Vy
[ ] 8xy3 - XOR Vx, Vy
[x] 8xy4 - ADD Vx, Vy
[ ] 8xy5 - SUB Vx, Vy
[ ] 8xy6 - SHR Vx {, Vy}
[ ] 8xy7 - SUBN Vx, Vy
[ ] 8xyE - SHL Vx {, Vy}
[ ] 9xy0 - SNE Vx, Vy
[x] Annn - LD I, addr
[ ] Bnnn - JP V0, addr
[x] Cxkk - RND Vx, byte
[x] Dxyn - DRW Vx, Vy, nibble
[x] Ex9E - SKP Vx
[x] ExA1 - SKNP Vx
[x] Fx07 - LD Vx, DT
[x] Fx0A - LD Vx, KEY
[x] Fx15 - LD DT, Vx
[x] Fx18 - LD ST, Vx
[x] Fx1E - ADD I, Vx
[x] Fx29 - LD F, Vx
[x] Fx33 - LD B, Vx
[ ] Fx55 - LD [I], Vx
[x] Fx65 - LD Vx, [I]

## Contributing

1. Fork it ( https://github.com/[my-github-username]/c8dasm/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
