<div align="center">

# 🐍 The Open Source Audit
### Python — A Community Built Language

![Python](https://img.shields.io/badge/Python-3.12.3-3776AB?style=for-the-badge&logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-PSF-blue?style=for-the-badge)
![OS](https://img.shields.io/badge/Platform-Linux%20%7C%20WSL2-orange?style=for-the-badge&logo=linux&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Bash-green?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

---

|  Author |  University |  Course |  REGISTRATION Number |
|-----------|--------------|-----------|----------------|
| MOHD OWAIS | VIT Bhopal University | Open Source Software | 24BCE10523 |

</div>

---

##  About This Project

> *"Every line of code you write in your career will sit on top of open-source foundations. Understanding the philosophy behind that is not optional — it is part of being a professional."*
> — OSS Course, VIT Bhopal

This repository is a structured audit of **Python** — one of the world's most widely used open-source programming languages. The audit covers Python's origin story, its license and freedoms, its Linux footprint, its ecosystem, and a critical comparison against proprietary alternatives.

Alongside the written report, this repository contains **5 shell scripts** that demonstrate practical Linux and Bash scripting skills — from system inspection to log analysis to interactive manifesto generation.

---

## 🐍 Why Python?

```
1989  →  Guido van Rossum starts Python over Christmas holidays
1991  →  Python 0.9.0 released openly on Usenet
2001  →  Python Software Foundation (PSF) established
2008  →  Python 3 released
2024  →  #1 most popular language on TIOBE Index
```

Python was born out of frustration with closed, inaccessible tools. Guido chose to share it freely — and that single decision changed the entire landscape of programming.

---

##  Repository Structure

```
oss-audit-24BCE10523/
│
├──  script1.sh          →  System Identity Report
├──  script2.sh          →  FOSS Package Inspector
├──  script3.sh          →  Disk and Permission Auditor
├──  script4.sh          →  Log File Analyzer
├──  script5.sh          →  Open Source Manifesto Generator
├──  testlog.txt         →  Sample log file for Script 4
└──  README.md           →  This file
```

---

##  Scripts Overview

### Script 1 — System Identity Report
![Concepts](https://img.shields.io/badge/Concepts-Variables%20|%20Echo%20|%20Command%20Substitution-blue?style=flat-square)

Displays a formatted welcome screen showing the Linux distribution, kernel version, logged-in user, system uptime, current date and time, and the open-source license covering the OS.

```bash
bash script1.sh
```

---

### Script 2 — FOSS Package Inspector
![Concepts](https://img.shields.io/badge/Concepts-if--else%20|%20case%20statement%20|%20dpkg%20|%20grep-blue?style=flat-square)

Checks whether Python is installed on the system using `dpkg`, fetches its version, maintainer, and description, then uses a `case` statement to print a philosophy note about the package.

```bash
bash script2.sh
```

---

### Script 3 — Disk and Permission Auditor
![Concepts](https://img.shields.io/badge/Concepts-for%20loop%20|%20ls%20|%20du%20|%20awk-blue?style=flat-square)

Loops through a list of critical system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) using a `for` loop and reports each directory's size, permissions, owner, and group. Also performs a dedicated check on Python's library directory.

```bash
bash script3.sh
```

---

### Script 4 — Log File Analyzer
![Concepts](https://img.shields.io/badge/Concepts-while%20loop%20|%20counter%20|%20arguments%20|%20grep%20|%20tail-blue?style=flat-square)

Accepts a log file and keyword as command-line arguments. Reads the file line by line using a `while` loop, counts how many lines contain the keyword, and displays the last 5 matching lines. Defaults to searching for `error` if no keyword is provided.

```bash
# Basic usage
bash script4.sh testlog.txt error

# Try different keywords
bash script4.sh testlog.txt warning
bash script4.sh testlog.txt info
```

---

### Script 5 — Open Source Manifesto Generator
![Concepts](https://img.shields.io/badge/Concepts-read%20|%20string%20concat%20|%20file%20write%20|%20aliases-blue?style=flat-square)

An interactive script that asks the user 3 questions, then composes a personalised open source philosophy statement using their answers. The manifesto is saved to a `.txt` file named after the current user and displayed on screen.

```bash
bash script5.sh
```

>  This script is **interactive** — it will prompt you with 3 questions. Type your answers and press `Enter` after each one.

---

##  Setup & Requirements

### Prerequisites

| Tool | Purpose | Install Command |
|------|---------|----------------|
| `bash` | Run shell scripts | Pre-installed on Linux |
| `python3` | Package being audited | `sudo apt install python3` |
| `dpkg` | Package inspection | Pre-installed on Ubuntu |
| `lsb_release` | Distro detection | `sudo apt install lsb-release` |
| Standard tools | `grep`, `awk`, `du`, `ls` | Pre-installed on Linux |

### Clone & Run

```bash
# Step 1: Clone the repository
git clone https://github.com/md-owais9956/oss-audit-24BCE10523.git

# Step 2: Move into the project folder
cd oss-audit-24BCE10523

# Step 3: Give execute permissions to all scripts
chmod +x *.sh

# Step 4: Run any script
bash script1.sh
```

---

##  Key Concepts Covered

| Bash Concept | Used In |
|-------------|---------|
| Variables & command substitution `$()` | Script 1 |
| `if-else` conditionals | Script 2, 4 |
| `case` statement | Script 2 |
| Arrays & `for` loops | Script 3 |
| `while read` loop | Script 4 |
| Command-line arguments `$1`, `$2` | Script 4 |
| `read` for interactive input | Script 5 |
| File writing with `>` and `>>` | Script 5 |
| String concatenation | Script 5 |
| Aliases (demonstrated via comment) | Script 5 |

---

##  License Information

| Software | License | Type |
|---------|---------|------|
| Python (audited) | PSF License | Permissive Open Source |
| Linux Kernel (host OS) | GPL v2 | Copyleft Open Source |
| Ubuntu (WSL2) | Various | Open Source |
| These scripts | Free to use | Public Domain |

---

##  Project Report

The full written report (12–16 pages) covering Parts A through D is submitted separately as a PDF on the **VITyarthi portal**.

The report covers:
- **Part A** — Python's origin story, license analysis, and open source ethics
- **Part B** — Python's Linux footprint (directories, permissions, users)
- **Part C** — The FOSS ecosystem around Python
- **Part D** — Python vs proprietary alternatives (MATLAB, etc.)

---

<div align="center">

---

Made with 🐍 and open source spirit  
**MOHD OWAIS** | VIT Bhopal University | 2026

</div>
