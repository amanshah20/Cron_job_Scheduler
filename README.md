# 🚀 Cron Job Scheduler 🕒 (Shell Scripting Project)

A **simple, interactive, and menu-driven Cron Job Scheduler** built using **Shell Scripting** to help you automate backups, cleanups, and custom commands easily without manually editing the `crontab`.

---

## 🌐 Project Repository

🔗 **Clone the project:**

```bash
git clone https://github.com/amanshah20/Cron_job_Scheduler.git
```

---

## ✨ Features

✅ Interactive **menu-driven interface**
✅ Schedule **automated backups**
✅ Schedule **cleanup tasks** (delete old files)
✅ Schedule **any custom command**
✅ View your **current cron jobs**
✅ **No manual crontab editing needed**

---

## 💻 How to Use (Step by Step)

### 1️⃣ Clone & Navigate:

```bash
git clone https://github.com/amanshah20/Cron_job_Scheduler.git
cd Cron_job_Scheduler
```

### 2️⃣ Make the script executable:

```bash
chmod +x cron_scheduler.sh
```

### 3️⃣ Run the scheduler:

```bash
./cron_scheduler.sh
```

---

## 🖥️ Interactive Menu

```
===========================
     CRON JOB SCHEDULER     
===========================
1. Schedule Backup Task
2. Schedule Cleanup Task
3. Schedule Custom Command
4. View Current Cron Jobs
5. Exit
===========================
```

---

## 📝 What Each Option Does:

### 🔹 1. Schedule Backup Task

* Set **time** (minute hour)
* Provide **backup script path** (default: `./backup_script.sh`)
* Automates your backups daily or hourly.

### 🔹 2. Schedule Cleanup Task

* Set **time** (minute hour)
* Provide **folder path**
* Specify **days** (delete files older than X days)

### 🔹 3. Schedule Custom Command

* Set **time**
* Enter **any command** to schedule (e.g., sending logs, running scripts)

### 🔹 4. View Current Cron Jobs

* Displays your saved **cron jobs**.

### 🔹 5. Exit

* Exits the scheduler.

---

## 📂 Project Structure

| File                | Description                               |
| ------------------- | ----------------------------------------- |
| `cron_scheduler.sh` | Main scheduler script                     |
| `backup_script.sh`  | Sample backup script (user can customize) |

---

## 📌 Example Usage

✅ **Backup every day at 2 AM**

```
Minute: 0
Hour: 2
Script Path: ./backup_script.sh
```

✅ **Cleanup every day at 3 AM, delete files older than 7 days**

```
Minute: 0
Hour: 3
Folder: /home/user/logs
Days: 7
```

✅ **Custom command at 5 AM**

```
Minute: 0
Hour: 5
Command: echo "System Checked" >> /home/user/status.txt
```

---

## ⚠️ Important Notes

* Your scripts (e.g., `backup_script.sh`) **must be executable** (`chmod +x`).
* This script **appends jobs** to the existing crontab—be careful to avoid duplicates.
* Runs on **Linux**, **WSL**, **Mac Terminal** (where `cron` is supported).

---

## 💡 Future Ideas (Optional Enhancements)

* ❗ Add option to **delete** scheduled jobs
* 📝 Log all actions to a **log file**
* 🎨 Add **colors and digital effects** to the menu

---

## 👨‍💻 Author

**Aman Kumar**
📧 \[Your Email or LinkedIn]
🔗 [https://github.com/amanshah20](https://github.com/amanshah20)

---

✅ **Clone Now:**

```bash
git clone https://github.com/amanshah20/Cron_job_Scheduler.git
```
