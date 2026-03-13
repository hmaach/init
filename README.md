# `init` Setup

This project automates the setup of common developer tools and configurations in **Ubuntu** without requiring `sudo` privileges.

---

## Table of Contents

- [Project Structure](#-project-structure)
- [Quick Start](#-quick-start)
- [Scripts Overview](#-scripts-overview)
- [Available Scripts](#-available-scripts)
  - [Installation Scripts](#installation-scripts)
  - [Configuration Scripts](#configuration-scripts)
  - [System Scripts](#system-scripts)
- [Running Scripts Without Cloning](#-running-scripts-without-cloning)
- [Using Makefile](#-using-makefile)
- [Helper: Run Any Script Directly](#-helper-run-any-script-directly)
- [Important Note](#-important-note)
- [Open Source & Contributing](#-open-source--contributing)
- [Tips](#-tips)
- [Author](#-author)

---

# Quick Start

### Clone and Run

```bash
git clone https://github.com/hmaach/init.git
cd init

chmod +x run.sh cmd/*.sh Makefile

./run.sh
```

### Using Makefile

```bash
make help

make install-docker
make setup-git
```

---

# Important Note

⚠️ **After running any installation script, always reload your shell configuration.**

Many scripts update environment variables such as `PATH`.

Run:

```bash
source ~/.zshrc
```

If you skip this step, newly installed commands may not be immediately available.

---

# Scripts Overview

| Script                 | Quick Run Command                                                                                             |
| ---------------------- | ------------------------------------------------------------------------------------------------------------- |
| install_discord.sh     | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_discord.sh)`     |
| install_docker.sh      | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_docker.sh)`      |
| install_mkcert.sh      | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_mkcert.sh)`      |
| install_mongosh.sh     | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_mongosh.sh)`     |
| install_mvn.sh         | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_mvn.sh)`         |
| install_ng.sh          | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_ng.sh)`          |
| install_tmux.sh        | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_tmux.sh)`        |
| setup_git.sh           | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/setup_git.sh)`           |
| setup_clock.sh         | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/setupt_clock.sh)`        |
| setup_refresh_rates.sh | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/setup_refresh_rates.sh)` |
| update_java_to_v21.sh  | `bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/update_java_to_v21.sh)`  |

---

# Using Makefile

```bash
make help

make install-discord
make install-docker
make install-mkcert
make install-mongosh
make install-mvn
make install-ng
make install-tmux

make setup-git
make setup-clock
make setup-refresh-rates

make update-java
```

---

# Helper: Run Any Script Directly

You can run any script from the repository using:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/<script-name>.sh)
```

Example:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/hmaach/init/refs/heads/main/cmd/install_tmux.sh)
```

---

# Open Source & Contributing

This project is **open source**.

If you have:

- a useful setup script
- improvements to existing scripts
- bug fixes
- better automation ideas

you are welcome to contribute.

Ways to contribute:

1. Fork the repository
2. Add or improve a script
3. Update the scripts overview table
4. Submit a pull request

You can also open an issue if something does not work correctly.

The goal of this project is to build a **collection of reliable scripts for setting up developer environments without sudo**.

---

# Tips

- Use `source run.sh` if you want environment changes applied immediately.
- All installations occur inside your **home directory**.
- No `sudo` is required.
- You can run scripts individually depending on what you need.

---

# Author

Hamza Maach
