[![GitHub release](https://img.shields.io/github/release/daviscodesbugs/cransi.svg)](https://github.com/daviscodesbugs/cransi/releases)
[![Build Status](https://travis-ci.org/daviscodesbugs/cransi.svg?branch=master)](https://travis-ci.org/daviscodesbugs/cransi)

# cransi

ANSI escape codes for terminal manipulation

## Installation

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  cransi:
    github: daviscodesbugs/cransi
```

2. Run `shards install`

## Usage

```crystal
require "cransi"

puts "Hello world!\nThanks for checking out cransi!"
print Cransi.cursor_save
wait
print Cransi.cursor_prev_line 2
wait
print Cransi.cursor_col 6
wait
print Cransi.insert_char 7
wait
print " there,"
wait
print Cransi.cursor_restore
wait
puts "Try this example with SLOW = true"
wait

SLOW = false
def wait
  sleep 1.second if SLOW
end
```

Final output

```text
Hello there, world!
Thanks for checking out cransi!
Try this example with SLOW = true
```

## API

[Additional documentation can be found here](https://daviscodesbugs.github.io/cransi/)

### Cursor Movement

- `cursor_up` Move the cursor up
- `cursor_down` Move the cursor down
- `cursor_forward` Move the cursor forward
- `cursor_backward` Move the cursor backward
- `cursor_next_line` Move the cursor to the beginning of the next line
- `cursor_prev_line` Move the cursor to the beginning of the previous line
- `cursor_col` Move the cursor to a specific column
- `cursor_to` Move the cursor to a specific row & column
- `cursor_save` Save the current position of the cursor to later `cursor_restore` to
- `cursor_restore` Restore the cursor to the position when `cursor_save` was last called
- `cursor_show` Show the cursor
- `cursor_hide` Hide the cursor
- `cursor_get_pos` Get the current position of the cursor
- `cursor_home` Return the cursor to row 0, column 0

### Erase

For the following, a cell that is "erased" can also be thought of as blank

- `erase_chars` Mark cells from cursor as erased
- `erase_end` Mark cells from the cursor the end of the line as erased
- `erase_home` Mark cells from the beginning of the line to the cursor as erased
- `erase_line` Mark the entire line as erased
- `erase_down` Mark cells from the cursor the the bottom of the display as erased
- `erase_up` Mark cells from the top of the display to the cursor as erased
- `erase_screen` Mark the entire display as erased
- `erase_terminal` Mark the entire display and the scroll-back buffer as erased

### Insert

- `insert_char` Insert cells, shifting the rest of the line forward
- `insert_line` Insert lines, shifting the current line downward

### Delete

- `delete_char` Delete cells, shifting the rest of the line backward
- `delete_line` Delete lines, shifting following lines upward

### Misc

- `repeat` Repeat the last printable character
- `scroll_up` Shift all lines upward, generating new lines
- `scroll_down` Shift all lines downward

## Contributing
1. Fork it (<https://github.com/daviscodesbugs/cransi/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [daviscodsbugs](https://github.com/daviscodesbugs) - creator and maintainer
