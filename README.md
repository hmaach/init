# 🧰Setup Helper

This mini project automates the setup of common developer tools and configurations in **Ubuntu** without requiring `sudo` privileges.  

---

## 📁 Project Structure


### Script Descriptions

| File | Description |
|------|--------------|
| `run.sh` | Main entry point that runs all setup scripts. |
| `cmd/install_docker.sh` | Installs Docker in **rootless mode**. |
| `cmd/install_ng.sh` | Installs Angular CLI locally (in `~/.local`). |
| `cmd/setupt_git.sh` | Configures your Git username and email. ⚠️ *Change before using!* |
| `cmd/setupt_clock.sh` | Enables seconds in the Ubuntu GNOME clock. |

---

## ⚙️ Installation

1. Clone this project:
   ```bash
   git clone https://github.com/hmaach/init.git
   cd init
    ```

2. Make all scripts executable:

   ```bash
   chmod +x run.sh cmd/*.sh
   ```

3. Run the main script:

   ```bash
   ./run.sh
   ```

---

## 🚀 What the Script Does

* Installs **Docker (rootless)** via official script.
* Installs **Angular CLI** to `~/.local/bin` and updates your `PATH`.
* Sets up your **Git global config** (name and email).
* Enables **clock seconds** in your GNOME top bar.

---

## ⚠️ Important

### 1. Update Your Git Credentials

Before running `run.sh`, edit `cmd/setupt_git.sh` and update your personal information:

```bash
git config --global user.email "your-email@example.com"
git config --global user.name "Your Name"
```


---

### 2. Reload Your Shell

After installation, open a new terminal or run:

```bash
source ~/.zshrc
```

to ensure the `ng` command works correctly.

---

## 🧩 Tips

* Run with `source run.sh` instead of `./run.sh` if you want your environment (like `PATH`) updated immediately.
* The scripts don’t need `sudo` — everything is installed inside your user directory.
* If you want to disable the clock seconds later:

  ```bash
  gsettings set org.gnome.desktop.interface clock-show-seconds false
  ```

---

## 🧑‍💻 Author

**Hamza Maach**

> Created for quick environment setup.

