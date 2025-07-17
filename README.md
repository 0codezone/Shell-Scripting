# Shell-Scripting

# 🚀 AWS EC2 Automation with Bash Script

A small project where I automated the creation of an AWS EC2 instance using a simple yet powerful Bash script.  
This was part of my personal learning journey to get hands-on with AWS CLI, IAM, EC2, and shell scripting.

---

## 🛠️ **What this script does**

✅ Checks if **AWS CLI** is installed, else automatically installs it (v2)  
✅ Creates an **EC2 instance** with your given parameters (AMI, subnet, security group, etc.)  
✅ Waits until the instance state is `running`  
✅ Logs useful messages & handles errors properly

---

## 📌 **Why I built this**
> I wanted to learn:
> - How AWS CLI works behind the scenes
> - How IAM users & programmatic access work
> - Basics of Bash scripting (functions, variables, error handling)
> - Automating repetitive cloud tasks

---

## ✨ **How to use**

> ⚠️ Make sure you have:
> - An AWS account
> - Created an **IAM user** with `Programmatic access` & `AmazonEC2FullAccess` policy
> - Got your **Access Key ID** & **Secret Access Key**

1️⃣ Clone this repo or copy the script  
2️⃣ Configure AWS CLI:
```bash
aws configure



## ✨ ** Edit the script to add:**
> AMI_ID="ami-xxxxxxxx"
> INSTANCE_TYPE="t2.micro"
> KEY_NAME="your-keypair"
> SUBNET_ID="subnet-xxxxxxxx"
> SECURITY_GROUP_IDS="sg-xxxxxxxx"
> INSTANCE_NAME="Shell-Script-EC2-Demo"

## Make the script executable:



