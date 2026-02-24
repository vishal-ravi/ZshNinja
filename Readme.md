# 🥷 ZshNinja

**Silent. Fast. Powerful.**

Supercharge your terminal with a curated collection of Zsh aliases and developer shortcuts designed for:

* 🤖 AI/ML engineers
* 🧬 Bioinformaticians
* 🐧 Linux power users
* 💻 Developers

---

## ⚡ Features

* 🚀 One-command installer
* 📦 APT automation shortcuts
* 🐍 Python & Conda helpers
* 🌳 Git productivity aliases
* 🧬 Bioinformatics friendly
* 🧠 Developer power functions
* 🧩 Safe and lightweight

---

# 🚀 Quick Install (Recommended)

```bash
git clone https://github.com/vishal-ravi/ZshNinja.git
cd ZshNinja
bash install.sh
```

Then restart terminal **or** run:

```bash
source ~/.zshrc
```

✅ Done!

---

# 🧩 Manual Setup (Step-by-Step)

If you prefer manual installation.

---

## 1️⃣ Install Zsh

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install zsh -y
```

### Verify

```bash
zsh --version
```

---

## 2️⃣ Set Zsh as Default Shell (Recommended)

```bash
chsh -s $(which zsh)
```

👉 Log out and log back in.

Check:

```bash
echo $SHELL
```

Expected:

```
/usr/bin/zsh
```

---

## 3️⃣ Clone ZshNinja

```bash
git clone https://github.com/vishal-ravi/ZshNinja.git
cd ZshNinja
```

---

## 4️⃣ Install Aliases

```bash
cp zsh_aliases ~/.zsh_aliases
```

---

## 5️⃣ Link in ~/.zshrc

Add this line to the bottom of `~/.zshrc`:

```bash
source ~/.zsh_aliases
```

Quick way:

```bash
echo "source ~/.zsh_aliases" >> ~/.zshrc
```

---

## 6️⃣ Reload Shell

```bash
source ~/.zshrc
```

✅ Setup complete.

---

# 🧪 Example Commands

```bash
update        # system update
updatefull    # full cleanup + upgrade
gs            # git status
ca myenv      # activate conda env
mkconda test  # create conda env quickly
myip          # show public IP
```

---

# 🧠 Included Power Functions

ZshNinja provides smart helpers:

* `updatefull` → full system maintenance
* `mkconda` → quick conda environment creation
* `extract` → universal archive extractor

---

# 🎯 Why ZshNinja?

Because your terminal should be:

* ⚡ Fast
* 🎯 Efficient
* 🧠 Intelligent
* 🥷 Silent

---

# 🤝 Contributing

Contributions, issues, and feature requests are welcome!

```bash
git checkout -b feature-name
```

---

# 📜 License

MIT License

---

# ⭐ Support the Project

If this helped you:

* ⭐ Star the repo
* 🍴 Fork it
* 📢 Share with developers

---

**Made with ❤️ by Vishal | ZCodeLab**
