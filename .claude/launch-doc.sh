#!/bin/bash

# Launch Doc Agent - AICodeRally Documentation Terminal
# This script opens a dedicated iTerm2 session for the Doc agent with custom styling

# Colors for output
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${CYAN}📚 Launching Doc Agent Terminal...${NC}"

# Check if iTerm2 is installed
if ! command -v osascript &> /dev/null; then
    echo -e "${YELLOW}⚠️  This script requires macOS and iTerm2${NC}"
    exit 1
fi

# Directory to launch in
DOC_DIR="/Users/todd.lebaron/dev/aicoderally-docs"

# Check if directory exists
if [ ! -d "$DOC_DIR" ]; then
    echo -e "${YELLOW}⚠️  Documentation directory not found: $DOC_DIR${NC}"
    exit 1
fi

# iTerm2 AppleScript to open new window with custom profile
osascript <<'APPLESCRIPT'
tell application "iTerm"
    activate

    -- Try to use the Doc Agent profile if it exists, otherwise create a new window
    try
        set newWindow to (create window with profile "Doc Agent - AICodeRally")
    on error
        set newWindow to (create window with default profile)
    end try

    tell current session of newWindow
        -- Change to docs directory and show welcome banner
        write text "cd /Users/todd.lebaron/dev/aicoderally-docs && bash .claude/welcome-banner.sh"

        -- Set tab/window title
        write text "printf '\\033]0;📚 Doc Agent - AICodeRally\\007'"

        -- Set badge
        write text "printf '\\033]1337;SetBadgeFormat=%s\\007' $(echo -n '📚 DOC' | base64)"
    end tell
end tell
APPLESCRIPT

echo -e "${GREEN}✅ Doc Agent terminal launched!${NC}"
