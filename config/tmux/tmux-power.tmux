
# Options
set -gq @right_arrow_icon ""
set -gq @left_arrow_icon ""

# short for Theme-Colour
set -gq @TC "#ffb86c"

set -gq @G01 "#080808"
set -gq @G02 "#121212"
set -gq @G03 "#1c1c1c"
set -gq @G04 "#262626"
set -gq @G05 "#303030"
set -gq @G06 "#3a3a3a"
set -gq @G07 "#444444"
set -gq @G08 "#4e4e4e"
set -gq @G09 "#585858"
set -gq @G10 "#626262"
set -gq @G11 "#6c6c6c"
set -gq @G12 "#767676"

set -gqF @FG "#{@G10}"
set -gqF @BG "#{@G04}"

# Status options
set -gq status-interval "60"
set -gq status "on"

# Basic status bar colors
set -gqF status-fg "#{@FG}"
set -gqF status-bg "#{@BG}"
set -gq status-attr "none"

# Left side of status bar
set -gqF status-left-bg "#{@G04}"
set -gqF status-left-fg "#{@G12}"
set -gq status-left-length 150
set -gqF status-left "#[fg=#{@TC},bg=#{@G06}]  ##S #[fg=#{@G06},bg=#{@BG}]#{@right_arrow_icon}"

# Right side of status bar
set -gqF status-right-bg "#{@G04}"
set -gqF status-right-fg "#{@G12}"
set -gq status-right-length 150
set -gqF status-right "#[fg=#{@G06},bg=#{@BG}]#{@left_arrow_icon}#[fg=#{@TC},bg=#{@G06}]  %H:%M "

# Window status
set -gq window-status-format " #I: #W#F "
set -gqF window-status-current-format "#[fg=#{@BG},bg=#{@G06}]#{@right_arrow_icon}#[fg=#{@TC},bold] ##I: ##W##F #[bg=#{@G06},fg=#{@BG},nobold]#{@left_arrow_icon}"

# Window separator
set -gq window-status-separator " "

# Window status alignment
set -gq status-justify centre

# Current window status
set -gqF window-status-current-statys "fg=#{@TC},bg=#{@BG}"

# Pane border
set -gqF pane-border-style "fg=#{@G07},bg=default"

# Active pane border
set -gqF pane-active-border-style "fg=#{@TC},bg=#{@BG}"

# Pane number indicator
set -gqF display-panes-colour "#{@G07}"
set -gqF display-panes-active-colour "#{@TC}"

# Clock mode
set -gqF clock-mode-colour "#{@TC}"
set -gq clock-mode-style 24

# Message
set -gqF message-style "fg=#{@TC},bg=#{@BG}"

# Command message
set -gqF message-command-style "fg=#{@TC},bg=#{@BG}"

# Copy mode highlight
set -gqF mode-style "bg=#{@TC},fg=#{@FG}"

