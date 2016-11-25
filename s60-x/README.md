# S60-X keyboard firmware

## S60-X Resources

- [Massdrop page](https://www.massdrop.com/buy/sentraq-60-diy-keyboard-kit?mode=guest_open)
- [Buy from Sentraq](https://sentraq.com/collections/all)

## Get started

For more specific and internal details, refer to [qmk_firmware](https://github.com/jackhumbert/qmk_firmware).

### Setup build environment

For Mac, an easy way to install [dfu-programmer](https://github.com/dfu-programmer/dfu-programmer) for flashing keyboard firmware is using homebrew.

```
$ brew tap osx-cross/avr
$ brew install avr-libc
$ brew install dfu-programmer
```

### Build `<keymap>.hex`

Clone `https://github.com/jackhumbert/qmk_firmware.git` and cd to `qmk_firmware/keyboards/s60-x/`. Files under `keymaps/` are good references for building custom keymaps. If you are interested in my [keymap](https://github.com/wyudong/config/tree/master/s60-x/keymaps/donkey), just download `keymaps` folder in this repository.

Build `keymap.c` to `<keymap>.hex` using :

`$ make keymap=[custom|poker|poker_set|poker_bit|plain|hasu|spacefn|hhkb|<keymap>]`

A file named `s60-x_<keymap>.hex` will be generated under project root `qmk_firmware/`.

## Flash keyboard firmware

Turn over S60-X and press the S1 button to get ready for flashing. After the button pressed, it will disable input of the keyboard. Start to flash firmware using:

```
$ sudo dfu-programmer atmega32u4 erase && sudo dfu-programmer atmega32u4 flash s60-x_donkey.hex && sudo dfu-programmer atmega32u4 start
```

If there occurs `Device is write protected` error, try to add `--force`. More debug details can be found in this [issue](https://github.com/jackhumbert/qmk_firmware/issues/444).

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
    │     │     │     │     │     │     │     │PgUp │ Up  │PgDn |     |     |     |     │█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │ Cap │ Mut │ VoD │ VoU │     │     │     │Left │Down │Right│     │     │▒▒▒▒▒│     │█████│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │     │▒▒▒▒▒│     │     │     │     │     │     │     │     │     │     │▒▒▒▒▒│     │▒▒▒▒▒│
    ├─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┤
    │     │     │     │█████│█████│█████│     │█████│█████│█████│     │     │     │     │█████│
    └─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
