# TODO: Write documentation for `Cransi`
module Cransi
  VERSION = "0.1.0"

  private ESC = "\e["
  private SEP = ';'

  # counts ================================================
  private INSERT_CHAR = '@'
  private INSERT_LINE = 'L'

  private REPEAT = 'b'

  private CURSOR_UP        = 'A'
  private CURSOR_DOWN      = 'B'
  private CURSOR_FORWARD   = 'C'
  private CURSOR_BACKWARD  = 'D'
  private CURSOR_NEXT_LINE = 'E'
  private CURSOR_PREV_LINE = 'F'
  private CURSOR_COL       = 'G'

  private ERASE_CHARS = 'X'

  private DELETE_LINE = 'M'
  private DELETE_CHAR = 'P'

  private SCROLL_UP   = 'S'
  private SCROLL_DOWN = 'T'

  # coords ================================================
  private CURSOR_TO = 'H'

  # cmds ==================================================
  private CURSOR_HOME    = 'H'
  private CURSOR_SAVE    = 's'
  private CURSOR_RESTORE = 'u'
  private CURSOR_SHOW    = "?25h"
  private CURSOR_HIDE    = "?25l"
  private CURSOR_GET_POS = "6n"

  private ERASE_END  = "0K"
  private ERASE_HOME = "1K"
  private ERASE_LINE = "2K"

  private ERASE_DOWN     = "0J"
  private ERASE_UP       = "1J"
  private ERASE_SCREEN   = "2J"
  private ERASE_TERMINAL = "3J"

  private COUNTS = %w(
    cursor_up
    cursor_down
    cursor_forward
    cursor_backward
    cursor_next_line
    cursor_prev_line
    cursor_col
    insert_char
    erase_chars
    insert_line
    delete_line
    delete_char
    repeat
    scroll_up
    scroll_down
  )
  {% for count in COUNTS %}
    def self.{{count.id}}(count = 1) : String
      ESC + count.to_s + {{count.id.upcase}}
    end
  {% end %}

  private COORDS = %w(
    cursor_to
  )
  {% for coord in COORDS %}
    def self.{{coord.id}}(row : Int, col : Int) : String
      ESC + row.to_s + SEP + col.to_s + {{coord.id.upcase}}
    end
  {% end %}

  private CMDS = %w(
    cursor_save
    cursor_restore
    cursor_show
    cursor_hide
    cursor_get_pos
    cursor_home
    erase_end
    erase_home
    erase_line
    erase_down
    erase_up
    erase_screen
    erase_terminal
  )
  {% for cmd in CMDS %}
    def self.{{cmd.id}} : String
      ESC + {{cmd.id.upcase}}
    end
  {% end %}
end
