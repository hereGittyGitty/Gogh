#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#20202A"           # HOST
export COLOR_02="#2C2E3E"           # SYNTAX_STRING
export COLOR_03="#3D4059"           # COMMAND
export COLOR_04="#313449"           # COMMAND_COLOR2
export COLOR_05="#63718b"           # PATH
export COLOR_06="#CED4DF"           # SYNTAX_VAR
export COLOR_07="#414560"           # PROMP
export COLOR_08="#63718B"           #
export COLOR_09="#EBB9B9"           #
export COLOR_10="#E8CCA7"           # COMMAND_ERROR
export COLOR_11="#E6DFB8"           # EXEC
export COLOR_12="#B1DBA4"           #
export COLOR_13="#B8DCEB"           # FOLDER
export COLOR_14="#A3B8EF"           #
export COLOR_15="#F6BBE7"           #
export COLOR_16="#EAC1C1"           #

export BACKGROUND_COLOR="#20202a"   # Background Color
export FOREGROUND_COLOR="#c8cedc"   # Text
export CURSOR_COLOR="##ebe3b9" # Cursor
export PROFILE_NAME="Aquarium Dark"
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
