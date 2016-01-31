# C8dasm

`c8dasm` is a utility to disassemble a Chip8 binary file.

## Installation

Install it as:

    $ gem install c8dasm

## Usage

    $ c8dasm chip8file

### Example

    $ c8dasm MAZE
    200:a21e  LD I, 21e     ;Puts 21e into register I.
    202:c201  RND V2, 01    ;Puts random byte AND 01 into register V2.
    204:3201  SE V2, 01     ;Skip next instruction if V2 = 01.
    206:a21a  LD I, 21a     ;Puts 21a into register I.
    208:d014  DRW V0, V1, 4 ;Draws 4-byte sprite from I at (V0, V1)
    20a:7004  ADD V0, 04    ;V0 = V0 + 04.
    20c:3040  SE V0, 40     ;Skip next instruction if V0 = 40.
    20e:1200  JP 200        ;Jump to location 200.
    210:6000  LD V0, 00     ;Puts the value 00 into register V0.
    212:7104  ADD V1, 04    ;V1 = V1 + 04.
    ...

## License

GPLv3

## Standard Chip-8 Instructions (What's remain to do)

- [x] 00E0 - CLS
- [x] 00EE - RET
- [ ] 0nnn - SYS addr
- [x] 1nnn - JP addr
- [x] 2nnn - CALL addr
- [x] 3xkk - SE Vx, byte
- [x] 4xkk - SNE Vx, byte
- [x] 5xy0 - SE Vx, Vy
- [x] 6xkk - LD Vx, byte
- [x] 7xkk - ADD Vx, byte
- [x] 8xy0 - LD Vx, Vy
- [ ] 8xy1 - OR Vx, Vy
- [x] 8xy2 - AND Vx, Vy
- [x] 8xy3 - XOR Vx, Vy
- [x] 8xy4 - ADD Vx, Vy
- [x] 8xy5 - SUB Vx, Vy
- [x] 8xy6 - SHR Vx {, Vy}
- [ ] 8xy7 - SUBN Vx, Vy
- [x] 8xyE - SHL Vx {, Vy}
- [x] 9xy0 - SNE Vx, Vy
- [x] Annn - LD I, addr
- [x] Bnnn - JP V0, addr
- [x] Cxkk - RND Vx, byte
- [x] Dxyn - DRW Vx, Vy, nibble
- [x] Ex9E - SKP Vx
- [x] ExA1 - SKNP Vx
- [x] Fx07 - LD Vx, DT
- [x] Fx0A - LD Vx, KEY
- [x] Fx15 - LD DT, Vx
- [x] Fx18 - LD ST, Vx
- [x] Fx1E - ADD I, Vx
- [x] Fx29 - LD F, Vx
- [x] Fx33 - LD B, Vx
- [x] Fx55 - LD [I], Vx
- [x] Fx65 - LD Vx, [I]

## TODO

Check input file.

Option --help and --version.

Data range display option, for instance:

    $ c8dasm --data=21a,221 MAZE
    200:a21e  LD I, 21e     ;Puts 21e into register I.
    202:c201  RND V2, 01    ;Puts random byte AND 01 into register V2.
    204:3201  SE V2, 01     ;Skip next instruction if V2 = 01.
    206:a21a  LD I, 21a     ;Puts 21a into register I.
    208:d014  DRW V0, V1, 4 ;Draws 4-byte sprite from I at (V0, V1)
    20a:7004  ADD V0, 04    ;V0 = V0 + 04.
    20c:3040  SE V0, 40     ;Skip next instruction if V0 = 40.
    20e:1200  JP 200        ;Jump to location 200.
    210:6000  LD V0, 00     ;Puts the value 00 into register V0.
    212:7104  ADD V1, 04    ;V1 = V1 + 04.
    214:3120  SE V1, 20     ;Skip next instruction if V1 = 20.
    216:1200  JP 200        ;Jump to location 200.
    218:1218  JP 218        ;Jump to location 218.
    21a:80    @.......
    21b:40    .@......
    21c:20    ..@.....
    21d:10    ...@....
    21e:20    ..@.....
    21f:40    .@......
    220:80    @.......
    221:10    ...@....

## Contributing

1. Fork it ( https://github.com/[my-github-username]/c8dasm/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
