# Vim/Neovim Cheat Sheet

## 1. Basic Navigation
| Command  | Description                           | Mnemonic                     |
|----------|--------------------------------------|------------------------------|
| `h`      | Move left                            | **H**orizontal left          |
| `l`      | Move right                           | **L**ateral right            |
| `j`      | Move down                            | **J**ump down                |
| `k`      | Move up                              | **K**limb up (or "King of the hill") |
| `0`      | Move to the beginning of the line    | **0** (first character)      |
| `^`      | Move to the first non-space character | **Caret** for "start of real text" |
| `$`      | Move to the end of the line          | **$** (money = end goal)     |
| `w`      | Move forward one word               | **W**ord forward             |
| `b`      | Move backward one word              | **B**ackward word            |
| `gg`     | Go to the beginning of the file     | **G**o to the **G**round floor |
| `G`      | Go to the end of the file           | **G**o to the **G**alaxy (far end) |
| `Ctrl-d` | Move down half a page               | **D**rop down                |
| `Ctrl-u` | Move up half a page                 | **U**pwards                  |
| `Ctrl-f` | Move forward a full page           | **F**orward page             |
| `Ctrl-b` | Move backward a full page          | **B**ackward page            |

## 2. File Navigation (Using netrw)
| Command  | Description                          | Mnemonic                      |
|----------|--------------------------------------|-------------------------------|
| `:e <filename>` | Open a file                 | **E**dit file                 |
| `:Ex`    | Open file explorer (netrw)         | **Ex**plorer                   |
| `-`      | Go up one directory in netrw       | Like UNIX shell                |
| `Ctrl-^` | Switch to the last opened file     | Think of a flip (^ shape)      |
| `:bd`    | Close (delete) the current buffer  | **B**uffer **D**elete          |
| `:ls`    | List all open buffers              | **L**ist **S**essions          |
| `:bn` / `:bp` | Move to next/previous buffer | **B**uffer **N**ext / **P**revious |
| `:q`     | Quit                               | **Q**uit                       |
| `:q!`    | Quit without saving               | **Q**uit forcefully            |
| `:w`     | Save file                          | **W**rite changes              |
| `:wq`    | Save and quit                     | **W**rite and **Q**uit         |
| `ZZ`     | Save and quit (faster)            | Two **Z**'s like closing eyes  |

## 3. Editing & Deleting
| Command  | Description                         | Mnemonic                     |
|----------|------------------------------------|-----------------------------|
| `i`      | Insert before cursor              | **I**nsert                  |
| `a`      | Append after cursor               | **A**dd after               |
| `o`      | Open a new line below             | **O**pen line               |
| `O`      | Open a new line above             | **O**pen line (above)       |
| `x`      | Delete character under cursor     | Think of a cross (X)        |
| `dd`     | Delete entire line                | **D**elete **D**efinitely   |
| `dw`     | Delete word                       | **D**elete **W**ord         |
| `d$`     | Delete from cursor to end of line | **D**elete till **$**       |
| `yy`     | Copy (yank) a line                | **Y**ank **Y**our line      |
| `p`      | Paste after cursor                | **P**ut text back           |
| `P`      | Paste before cursor               | **P**ut text before         |
| `u`      | Undo                              | **U**ndo                    |
| `Ctrl-r` | Redo                              | **R**edo                    |

## 4. Searching & Replacing
| Command       | Description                              | Mnemonic                    |
|--------------|--------------------------------------|-----------------------------|
| `/text`      | Search forward for "text"           | **/ = Find** (like slash in URLs) |
| `?text`      | Search backward for "text"          | **?** (question = looking backward) |
| `n`          | Repeat last search forward         | **N**ext match             |
| `N`          | Repeat last search backward        | **N**ext in reverse        |
| `:%s/old/new/g` | Replace "old" with "new" in the entire file | **S**ubstitute globally |

## 5. Splits & Tabs
| Command      | Description                      | Mnemonic              |
|-------------|----------------------------------|-----------------------|
| `:vsplit`   | Split window vertically         | **V**ertical split    |
| `:split`    | Split window horizontally       | **H**orizontal split  |
| `Ctrl-w h/j/k/l` | Move between splits | **HJKL** for direction |
| `Ctrl-w q`  | Close split                     | **Q**uit split        |
| `:tabnew`   | Open a new tab                  | **T**ab new           |
| `gt`        | Move to next tab                | **G**o to next **T**ab |
| `gT`        | Move to previous tab            | **G**o to previous **T**ab |

## 6. Working with Code (Indenting & Formatting)
| Command | Description                 | Mnemonic                  |
|--------|-----------------------------|---------------------------|
| `>>`   | Indent current line         | Shift right               |
| `<<`   | Un-indent current line      | Shift left                |
| `=`    | Auto-indent selected lines  | Aligns like an `=` sign   |
| `V` then `=` | Auto-indent selected block | Select + Align         |

## 7. Visual Mode (Text Selection)
| Command | Description              | Mnemonic                   |
|--------|--------------------------|----------------------------|
| `v`    | Start visual mode        | **V**isual selection       |
| `V`    | Start visual line mode   | **V**isual line            |
| `Ctrl-v` | Start visual block mode | **V**isual block selection |
