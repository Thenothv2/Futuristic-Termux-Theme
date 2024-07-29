#!/bin/bash

# Create a directory for the theme if it doesn't exist
mkdir -p ~/.termux-theme

# Write the CSS content to a file
cat << 'EOF' > ~/.termux-theme/theme.css
/* Super Ultra Dark-Red Termux Theme */

/* General Body Styling */
body {
    background: linear-gradient(45deg, #1a0a0a, #3c0d0d); /* Diagonal gradient background in dark red */
    color: #f5d0d0; /* Light red text color */
    font-family: 'Courier New', Courier, monospace; /* Monospace font for terminal */
}

/* Header Styling */
.header {
    font-size: 1.8em;
    color: #e63946; /* Bright dark-red text color */
    text-shadow: 0 0 12px #e63946, 0 0 20px #e63946; /* Glowing effect */
    text-align: center;
    margin: 30px 0;
}

/* Primary Text Styling */
pre, code {
    color: #d9534f; /* Neon red text color */
    text-shadow: 0 0 10px #d9534f, 0 0 20px #d9534f; /* Glowing effect */
}

/* Prompt and Command Styling */
.prompt {
    color: #b52f2f; /* Darker red prompt color */
    text-shadow: 0 0 10px #b52f2f, 0 0 20px #b52f2f; /* Glowing effect */
}

.command {
    color: #ff6f6f; /* Light red command text color */
    text-shadow: 0 0 10px #ff6f6f, 0 0 20px #ff6f6f; /* Glowing effect */
}

/* Selection Styling */
::selection {
    background: #ff4c4c; /* Bright red selection background */
    color: #000000; /* Selection text color */
}

/* Cursor Styling */
.cursor {
    border-left: 2px solid #ff4c4c; /* Bright red cursor color */
    animation: blinkCursor 1s step-start infinite; /* Blinking cursor */
}

@keyframes blinkCursor {
    50% {
        border-color: transparent;
    }
}

/* Border Styling */
.border {
    border-color: #d9534f; /* Neon red border color */
}

/* Link Styling */
a {
    color: #ff4c4c; /* Bright red link color */
    text-shadow: 0 0 10px #ff4c4c, 0 0 20px #ff4c4c; /* Glowing effect */
    transition: color 0.3s ease; /* Smooth color transition */
}

a:hover {
    color: #ff6f6f; /* Light red link hover color */
    text-shadow: 0 0 10px #ff6f6f, 0 0 20px #ff6f6f; /* Glowing effect */
}

/* Additional Styling */
.container {
    border: 2px solid #d9534f; /* Neon red border for containers */
    border-radius: 15px; /* Rounded corners */
    padding: 15px;
    background: rgba(25, 10, 10, 0.7); /* Semi-transparent dark red background */
}

/* Box Shadow */
.shadow {
    box-shadow: 0 0 20px rgba(255, 100, 100, 0.7), 0 0 40px rgba(255, 50, 50, 0.5); /* Neon red glow */
}

/* Highlighting Text */
.highlight {
    background: rgba(255, 50, 50, 0.4); /* Semi-transparent bright red background */
    color: #ff4c4c; /* Bright red text color */
    padding: 4px 6px; /* Padding around highlighted text */
    border-radius: 5px; /* Rounded corners */
}

/* Animated Effects */
.animated {
    animation: pulse 2s infinite; /* Pulsing effect */
}

@keyframes pulse {
    0% {
        opacity: 0.8;
    }
    50% {
        opacity: 1;
    }
    100% {
        opacity: 0.8;
    }
}
EOF

# Write the startup message to a file
cat << 'EOF' > ~/.termux-theme/startup-message.txt
# Anonimus Ofc Header
echo -e "\033[1;31m"
echo "****************************************"
echo "*            Anonimus Ofc              *"
echo "*    Bem-vindo ao seu terminal!         *"
echo "****************************************"
echo -e "\033[0m"
EOF

# Make the script executable
chmod +x ~/.termux-theme/startup-message.txt

# Add the startup message to .bashrc or .zshrc
if [ -f ~/.bashrc ]; then
    echo 'bash ~/.termux-theme/startup-message.txt' >> ~/.bashrc
elif [ -f ~/.zshrc ]; then
    echo 'source ~/.termux-theme/startup-message.txt' >> ~/.zshrc
fi

echo "Theme setup complete. Restart Termux to see the changes."
