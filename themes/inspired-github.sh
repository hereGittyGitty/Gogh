#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#f5f5f5"           # HOST
export COLOR_02="#ca1243"           # SYNTAX_STRING
export COLOR_03="#33AA34"           # COMMAND
export COLOR_04="#F6BB63"           # COMMAND_COLOR2
export COLOR_05="#003e8a"           # PATH
export COLOR_06="#55009D"           # SYNTAX_VAR
export COLOR_07="#0E73A4"           # PROMP
export COLOR_08="#85889B"           #

export COLOR_09="#85889B"           #
export COLOR_10="#de0000"           # COMMAND_ERROR
export COLOR_11="#33AA34"           # EXEC
export COLOR_12="#f0cf06"           #
export COLOR_13="#2e6cba"           # FOLDER
export COLOR_14="#ffa29f"           #
export COLOR_15="#1cfafe"           #
export COLOR_16="#85889B"           #

export BACKGROUND_COLOR="#ffffff"   # Background Color
export FOREGROUND_COLOR="#3e3e3e"   # Text
# export BOLD_COLOR="#eeeeee"         # Bold
export CURSOR_COLOR="#dddddd" # Cursor
export PROFILE_NAME="inspired-github"
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
