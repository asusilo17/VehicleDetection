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

import os
from getpass import getpass

# Minta username GitHub Anda (opsional, jika username sudah ada di URL repo)
github_username = input("asusilo17")

# Minta Personal Access Token Anda secara aman
github_token = getpass("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")

# Ganti dengan URL repositori private Anda
# Format: https://<TOKEN>@github.com/<USERNAME>/<REPO_NAME>.git
# Atau jika Anda sudah tahu username di URL: https://<USERNAME>:<TOKEN>@github.com/<USERNAME>/<REPO_NAME>.git

repo_url = f"https://{github_token}@github.com/{github_username}/VehicleDetection.git"

# Ganti 'nama_repo_anda' dengan nama repositori GitHub Anda
# Ganti 'folder_tujuan' dengan nama folder tempat Anda ingin meng-clone repo (opsional)
!git clone {repo_url} folder_tujuan