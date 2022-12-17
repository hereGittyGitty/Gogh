#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#1d3b53"           # HOST
export COLOR_02="#fc514e"           # SYNTAX_STRING
export COLOR_03="#a1cd5e"           # COMMAND
export COLOR_04="#e3d18a"           # COMMAND_COLOR2
export COLOR_05="#82aaff"           # PATH
export COLOR_06="#c792ea"           # SYNTAX_VAR
export COLOR_07="#7fdbca"           # PROMP
export COLOR_08="#a1aab8"           #

export COLOR_09="#7c8f8f"           #
export COLOR_10="#ff5874"           # COMMAND_ERROR
export COLOR_11="#21c7a8"           # EXEC
export COLOR_12="#ecc48d"           #
export COLOR_13="#82aaff"           # FOLDER
export COLOR_14="#ae81ff"           #
export COLOR_15="#7fdbca"           #
export COLOR_16="#d6deeb"           #

export BACKGROUND_COLOR="#011627"   # Background Color
export FOREGROUND_COLOR="#acb4c2"   # Text
# export BOLD_COLOR="#eeeeee"         # Bold
export CURSOR_COLOR="#9e9e9e" # Cursor
export PROFILE_NAME="Nightfly"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
