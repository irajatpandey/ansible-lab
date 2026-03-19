mkdir -p /Users/rajatpandey/Downloads/test/ansible-lab/{inventory,playbooks,roles,group_vars,host_vars}

# ansible.cfg
cat > /Users/rajatpandey/Downloads/test/ansible-lab/ansible.cfg <<'EOF'
[defaults]
inventory         = ./inventory/hosts.ini
remote_user       = ec2-user
private_key_file  = /Users/rajatpandey/Downloads/test/ansible-lab/.ssh/your-key.pem   # ← change to your .pem filename
host_key_checking = False
retry_files_enabled = False
stdout_callback   = yaml

[privilege_escalation]
become        = True
become_method = sudo
EOF

# Inventory — paste your EC2 public IP after launch
cat > /Users/rajatpandey/Downloads/test/ansible-lab/inventory/hosts.ini <<'EOF'
[aws]
<YOUR_EC2_PUBLIC_IP> ansible_user=ec2-user

# Example:
# 13.234.56.78 ansible_user=ec2-user
EOF

# First test playbook
cat > /Users/rajatpandey/Downloads/test/ansible-lab/playbooks/hello.yml <<'EOF'
---
- name: Hello from macOS to EC2
  hosts: aws
  gather_facts: true

  tasks:
    - name: Print connection success
      debug:
        msg: "Connected! Remote host: {{ inventory_hostname }}, Python: {{ ansible_python_version }}"

    - name: Show OS info
      debug:
        msg: "{{ ansible_distribution }} {{ ansible_distribution_version }}"
EOF



## Command to run the playbook

# ansible-playbook playbooks/hello.yml --private-key ~/.ssh/rajat.pem