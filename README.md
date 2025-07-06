# Terraform Project Deploying AWS Infrastructure

This project automates the provisioning of AWS infrastructure using **Terraform**.
It includes a VPC, EC2 instance with Nginx, a public S3 static website, and an IAM user for fine-grained access control.

---

📦 Modules Included

- **VPC**: Custom Virtual Private Cloud with a public subnet.
- **EC2**: Web server deployed with Nginx and a custom `index.html`.
- **S3**: Static website hosting for an HTML file.
- **IAM**: User creation and secure access key handling using profiles.

---

Highlights & Features

- Uses **Terraform modules** to keep the code modular and reusable.
- Automatically creates and configures an IAM user and writes credentials to `~/.aws/credentials`.
- S3 bucket is configured with public access (for website) while still disabling ACLs.
- Clean `.gitignore` to avoid uploading sensitive or heavy files (like `.terraform/` and state files).

---

📁 Project Structure

devops-terraform/
│
├── main.tf
├── providers.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── modules/
│ ├── ec2/
│ ├── vpc/
│ ├── s3/
│ └── iam/
└── .gitignore

I built this project to deepen my understanding of Terraform, AWS infrastructure-as-code practices, and IAM access security.
Every module was written and tested manually — no auto-generated templates 🙂


