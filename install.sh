#!/usr/bin/env bash

# 🥷 ZshNinja Installer
# Silent. Fast. Powerful.

set -e

echo "🥷 Installing ZshNinja..."
echo "--------------------------------"

# ---------- Detect OS ----------
if ! command -v apt >/dev/null 2>&1; then
    echo "❌ This installer currently supports Debian/Ubuntu (apt) systems."
    exit 1
fi

# ---------- Install zsh if missing ----------
if ! command -v zsh >/dev/null 2>&1; then
    echo "📦 Zsh not found. Installing..."
    sudo apt update
    sudo apt install -y zsh
else
    echo "✅ Zsh already installed."
fi

# ---------- Ensure ~/.zshrc exists ----------
if [ ! -f "$HOME/.zshrc" ]; then
    echo "📄 Creating ~/.zshrc"
    touch "$HOME/.zshrc"
fi

# ---------- Copy aliases ----------
echo "📥 Installing aliases..."
cp -f zsh_aliases "$HOME/.zsh_aliases"

# ---------- Add source line safely ----------
if ! grep -q "zsh_aliases" "$HOME/.zshrc"; then
    echo "🔗 Linking aliases in .zshrc"
    echo "" >> "$HOME/.zshrc"
    echo "# ZshNinja" >> "$HOME/.zshrc"
    echo "source ~/.zsh_aliases" >> "$HOME/.zshrc"
else
    echo "✅ Aliases already linked."
fi

# ---------- Suggest default shell ----------
CURRENT_SHELL="$(basename "$SHELL")"

if [ "$CURRENT_SHELL" != "zsh" ]; then
    echo ""
    echo "⚠️ Your default shell is not zsh."
    echo "👉 Run this to switch:"
    echo "   chsh -s \$(which zsh)"
fi

echo ""
echo "--------------------------------"
echo "✅ ZshNinja installed successfully!"
echo "👉 Restart terminal OR run: source ~/.zshrc"
echo "🥷 Welcome to the ninja terminal."