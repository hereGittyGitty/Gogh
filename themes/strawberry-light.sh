#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#fff0f7"           # HOST
export COLOR_02="#f55050"           # SYNTAX_STRING
export COLOR_03="#219e21"           # COMMAND
export COLOR_04="#d4ac35"           # COMMAND_COLOR2
export COLOR_05="#468dd4"           # PATH
export COLOR_06="#a26fbf"           # SYNTAX_VAR
export COLOR_07="#1b9e9e"           # PROMP
export COLOR_08="#75616b"           #

export COLOR_09="#9e8b95"           #
export COLOR_10="#e06a26"           # COMMAND_ERROR
export COLOR_11="#f0dde6"           # EXEC
export COLOR_12="#b5a3ac"           #
export COLOR_13="#8a7680"           # FOLDER
export COLOR_14="#3b2c33"           #
export COLOR_15="#d46a84"           #
export COLOR_16="#2b1d24"           #

export BACKGROUND_COLOR="#fff0f7"   # Background Color
export FOREGROUND_COLOR="#2b1d24"   # Text
# export BACKGROUND_COLOR="#f7f7f7"   # Background Color
# export FOREGROUND_COLOR="#4a4543"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Strawberry Light"
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
