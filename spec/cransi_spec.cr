require "./spec_helper"

describe Cransi do
  it "cursor up - no param" do
    (Cransi.cursor_up).should eq "\e[1A"
  end
  it "cursor up - default param" do
    (Cransi.cursor_up 1).should eq "\e[1A"
  end
  it "cursor up - non-default param" do
    (Cransi.cursor_up 27).should eq "\e[27A"
  end
  it "cursor down - no param" do
    (Cransi.cursor_down).should eq "\e[1B"
  end
  it "cursor down - default param" do
    (Cransi.cursor_down 1).should eq "\e[1B"
  end
  it "cursor down - non-default param" do
    (Cransi.cursor_down 27).should eq "\e[27B"
  end
  it "cursor forward - no param" do
    (Cransi.cursor_forward).should eq "\e[1C"
  end
  it "cursor forward - default param" do
    (Cransi.cursor_forward 1).should eq "\e[1C"
  end
  it "cursor forward - non-default param" do
    (Cransi.cursor_forward 27).should eq "\e[27C"
  end
  it "cursor backward - no param" do
    (Cransi.cursor_backward).should eq "\e[1D"
  end
  it "cursor backward - default param" do
    (Cransi.cursor_backward 1).should eq "\e[1D"
  end
  it "cursor backward - non-default param" do
    (Cransi.cursor_backward 27).should eq "\e[27D"
  end
  it "cursor next line - no param" do
    (Cransi.cursor_next_line).should eq "\e[1E"
  end
  it "cursor next line - default param" do
    (Cransi.cursor_next_line 1).should eq "\e[1E"
  end
  it "cursor next line - non-default param" do
    (Cransi.cursor_next_line 27).should eq "\e[27E"
  end
  it "cursor previous line - no param" do
    (Cransi.cursor_prev_line).should eq "\e[1F"
  end
  it "cursor previous line - default param" do
    (Cransi.cursor_prev_line 1).should eq "\e[1F"
  end
  it "cursor previous line - non-default param" do
    (Cransi.cursor_prev_line 27).should eq "\e[27F"
  end
  it "cursor to column - no param" do
    (Cransi.cursor_col).should eq "\e[1G"
  end
  it "cursor to column - default param" do
    (Cransi.cursor_col 1).should eq "\e[1G"
  end
  it "cursor to column - non-default param" do
    (Cransi.cursor_col 27).should eq "\e[27G"
  end
  it "cursor to position - home" do
    (Cransi.cursor_to 0, 0).should eq "\e[0;0H"
  end
  it "cursor to position - simple" do
    (Cransi.cursor_to 7, 23).should eq "\e[7;23H"
  end
  it "cursor save" do
    (Cransi.cursor_save).should eq "\e[s"
  end
  it "cursor restore" do
    (Cransi.cursor_restore).should eq "\e[u"
  end
  it "cursor show" do
    (Cransi.cursor_show).should eq "\e[?25h"
  end
  it "cursor hide" do
    (Cransi.cursor_hide).should eq "\e[?25l"
  end
  it "cursor get position" do
    (Cransi.cursor_get_pos).should eq "\e[6n"
  end
  it "cursor set home" do
    (Cransi.cursor_home).should eq "\e[H"
  end
  it "erase characters - no params" do
    (Cransi.erase_chars).should eq "\e[1X"
  end
  it "erase characters - default params" do
    (Cransi.erase_chars 1).should eq "\e[1X"
  end
  it "erase characters - simple param" do
    (Cransi.erase_chars 27).should eq "\e[27X"
  end
  it "erase end" do
    (Cransi.erase_end).should eq "\e[0K"
  end
  it "erase home" do
    (Cransi.erase_home).should eq "\e[1K"
  end
  it "erase line" do
    (Cransi.erase_line).should eq "\e[2K"
  end
  it "erase down" do
    (Cransi.erase_down).should eq "\e[0J"
  end
  it "erase up" do
    (Cransi.erase_up).should eq "\e[1J"
  end
  it "erase screen" do
    (Cransi.erase_screen).should eq "\e[2J"
  end
  it "erase terminal" do
    (Cransi.erase_terminal).should eq "\e[3J"
  end
  it "insert char - no param" do
    (Cransi.insert_char).should eq "\e[1@"
  end
  it "insert char - default param" do
    (Cransi.insert_char 1).should eq "\e[1@"
  end
  it "insert char - simple param" do
    (Cransi.insert_char 27).should eq "\e[27@"
  end
  it "insert line - no param" do
    (Cransi.insert_line).should eq "\e[1L"
  end
  it "insert line - default param" do
    (Cransi.insert_line 1).should eq "\e[1L"
  end
  it "insert line - simple param" do
    (Cransi.insert_line 27).should eq "\e[27L"
  end
end
