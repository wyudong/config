# S60-X keyboard firmware

## S60-X Resources

- [Massdrop page](https://www.massdrop.com/buy/sentraq-60-diy-keyboard-kit?mode=guest_open)

## Get started

For more specific and internal details, refer to [qmk_firmware](https://github.com/jackhumbert/qmk_firmware).

### Setup build environment

For Mac, an easy way to install [dfu-programmer](https://github.com/dfu-programmer/dfu-programmer) for flashing keyboard firmware is using homebrew.

```
$ brew tap osx-cross/avr
$ brew install avr-libc
$ brew install dfu-programmer
```

### Build keymap binary

Build custom keymap to binary file.

1. Clone `https://github.com/jackhumbert/qmk_firmware.git`.
2. Go to `keyboards/s60-x/`, create custom keymap folder under `keymaps/`.
3. `$ make keymap=[custom|poker|poker_set|poker_bit|plain|hasu|spacefn|hhkb|<keymap>]`

A file named `s60-x_<keymap>.hex` will be generated under `s60-x/`.

## Flash keyboard firmware

Turn over S60-X and press the S1 button to get ready for flashing. After the button pressed, it will disable input of the keyboard. Start to flash firmware using:

`$ sudo dfu-programmer atmega32u4 erase && sudo dfu-programmer atmega32u4 flash s60-x_donkey.hex && sudo dfu-programmer atmega32u4 start
`

DONE!

## Keymap

[More keymap list](https://github.com/jackhumbert/qmk_firmware/tree/master/keyboards/s60-x#list-of-included-keymaps).

### Donkey

Source in [donkey.c](https://github.com/wyudong/config/blob/master/s60-x/keymaps/donkey/keymap.c).

#### 1.0 Default layer
    ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
    │ Esc │  1  │  2  │  3  │  4  │  5  │  6  │  7  │  8  │  9  │  0  │  -  │  =  │▒▒▒▒▒│Bkspc│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │ Tab │  Q  │  W  │  E  │  R  │  T  │  Y  │  U  │  I  │  O  │  P  │  [  │  ]  │  \  │█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │Ctrl │  A  │  S  │  D  │  F  │  G  │  H  │  J  │  K  │  L  │  ;  │  '  │▒▒▒▒▒│Enter│█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │Shift│▒▒▒▒▒│  Z  │  X  │  C  │  V  │  B  │  N  │  M  │  ,  │  .  │  /  │▒▒▒▒▒│ Up  │▒▒▒▒▒│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │ Fn0 │ Alt │ Gui │█████│█████│█████│Space│█████│█████│█████│ Gui │Left │Down │Right│█████│
    └─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
#### 1.1 Fn layer
    ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
    │Grave│ F1  │ F2  │ F3  │ F4  │ F5  │ F6  │ F7  │ F8  │ F9  │ F10 │ F11 │ F12 │▒▒▒▒▒│ Del │
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │     │     │     │     │     │     │     │     │ Up  │     |     |     |     |     │█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │ Cap │ VoD │ VoU │ Mut │     │     │PgUp │Left │Down │Right│     │     │▒▒▒▒▒│     │█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │     │▒▒▒▒▒│     │     │     │     │     │PgDn │     │     │     │     │▒▒▒▒▒│     │▒▒▒▒▒│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │     │     │     │█████│█████│█████│     │█████│█████│█████│     │     │     │     │█████│
    └─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
