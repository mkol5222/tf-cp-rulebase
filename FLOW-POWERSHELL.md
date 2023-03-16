## Demo flow in PowerShell

*Hint: define Shift-Enter as "Run selected text in active terminal" in VScode*

```powershell
# map TF
Set-Alias tf C:\Users\mkoldov\AppData\Local\Microsoft\WinGet\Links\terraform.exe
Set-Alias terraform C:\Users\mkoldov\AppData\Local\Microsoft\WinGet\Links\terraform.exe

# enter correct folder
cd terraform
# check inputs
cat terraform.tfvars
code terraform.tfvars
# it covers:
#   - credentials to speck to Check Point API
#   - credentials for Azure Reader - to obtain inventory by CloudGuard Controller
#   - credentials for Kubernetes reader SA - to obtain inventory by CloudGuard Controller

tf init -upgrade

# made all changes
tf apply -auto-approve
# commit (publish) changes to db to make them visible to all users
tf apply -auto-approve -var publish=true
# make policy applied to enforcement gateway
tf apply -auto-approve -var install=true
```