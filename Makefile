# Makefile for Setup Helper
# Provides convenient commands to run scripts from cmd/

# Colors for output
GREEN := $(shell tput setaf 2 2>/dev/null)
YELLOW := $(shell tput setaf 3 2>/dev/null)
RESET := $(shell tput sgr 0 2>/dev/null)

# Default target - show help
.PHONY: help
help:
	@echo ""
	@echo "$(GREEN)🧰 Setup Helper - Available Commands$(RESET)"
	@echo ""
	@echo "$(YELLOW)Usage:$(RESET)"
	@echo "  make <target>"
	@echo ""
	@echo "$(YELLOW)Installation Scripts:$(RESET)"
	@echo "  make install-discord          Install Discord"
	@echo "  make install-docker            Install Docker (rootless mode)"
	@echo "  make install-mkcert            Install mkcert for local HTTPS"
	@echo "  make install-mongosh           Install MongoDB Shell"
	@echo "  make install-mvn               Install Apache Maven"
	@echo "  make install-ng                Install Angular CLI"
	@echo "  make install-tmux              Install tmux"
	@echo ""
	@echo "$(YELLOW)Configuration Scripts:$(RESET)"
	@echo "  make setup-git                 Configure Git username and email"
	@echo "  make setup-clock               Enable seconds in GNOME clock"
	@echo "  make setup-refresh-rates       Configure custom refresh rates"
	@echo ""
	@echo "$(YELLOW)System Scripts:$(RESET)"
	@echo "  make update-java               Update Java to version 21"
	@echo ""
	@echo "$(YELLOW)Other:$(RESET)"
	@echo "  make all                       Run all setup scripts"
	@echo "  make help                      Show this help message"
	@echo ""

# Installation targets
.PHONY: install-discord
install-discord:
	@echo "$(GREEN)Installing Discord...$(RESET)"
	@./cmd/install_discord.sh

.PHONY: install-docker
install-docker:
	@echo "$(GREEN)Installing Docker (rootless mode)...$(RESET)"
	@./cmd/install_docker.sh

.PHONY: install-mkcert
install-mkcert:
	@echo "$(GREEN)Installing mkcert...$(RESET)"
	@./cmd/install_mkcert.sh

.PHONY: install-mongosh
install-mongosh:
	@echo "$(GREEN)Installing MongoDB Shell...$(RESET)"
	@./cmd/install_mongosh.sh

.PHONY: install-mvn
install-mvn:
	@echo "$(GREEN)Installing Apache Maven...$(RESET)"
	@./cmd/install_mvn.sh

.PHONY: install-ng
install-ng:
	@echo "$(GREEN)Installing Angular CLI...$(RESET)"
	@./cmd/install_ng.sh

.PHONY: install-tmux
install-tmux:
	@echo "$(GREEN)Installing tmux...$(RESET)"
	@./cmd/install_tmux.sh

# Configuration targets
.PHONY: setup-git
setup-git:
	@echo "$(GREEN)Configuring Git...$(RESET)"
	@./cmd/setup_git.sh

.PHONY: setup-clock
setup-clock:
	@echo "$(GREEN)Enabling seconds in GNOME clock...$(RESET)"
	@./cmd/setupt_clock.sh

.PHONY: setup-refresh-rates
setup-refresh-rates:
	@echo "$(GREEN)Setting up custom refresh rates...$(RESET)"
	@./cmd/setup_refresh_rates.sh

# System targets
.PHONY: update-java
update-java:
	@echo "$(GREEN)Updating Java to version 21...$(RESET)"
	@./cmd/update_java_to_v21.sh

# Run all scripts
.PHONY: all
all:
	@echo "$(GREEN)Running all setup scripts...$(RESET)"
	@./run.sh
