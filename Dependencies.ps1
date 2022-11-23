#Requires -RunAsAdministrator

# Update Help for Modules
Write-Host "Updating Help..." -BackgroundColor "Yellow" -ForegroundColor "Black"
Update-Help -Force -UICulture en-US
Update-Help -Force

# Install Oh My Posh
Write-Host "Installing Oh My Posh..." -BackgroundColor "Yellow" -ForegroundColor "Black"
winget install JanDeDobbeleer.OhMyPosh -s winget

# Install vim-plug for mingw64
Write-Host "Installing vim plugin loader for mingw64..." -BackgroundColor "Yellow" -ForegroundColor "Black"
Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | `
	New-Item $HOME/.vim/autoload/plug.vim -Force

# Windows Features
# Write-Host "Installing Windows Features..." -BackgroundColor "Yellow" -ForegroundColor "Black"
# Enable-WindowsOptionalFeature -Online -All -FeatureName `
	# 'Microsoft-Windows-Subsystem-Linux' # `
	# 'Microsoft-Hyper-V-All', `
	# 'Microsoft-Hyper-V-Tools-All' `
	# 'Containers-DisposableClientVM' `

# Windows Capabilities
Write-Host "Install Windows Capabilities" -BackgroundColor "Yellow" -ForegroundColor "Black"
Add-WindowsCapability -Online -Name Language.Basic~~~en-GB~0.0.1.0
Add-WindowsCapability -Online -Name Language.Basic~~~es-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.Basic~~~ca-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.Handwriting~~~ca-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.Handwriting~~~en-GB~0.0.1.0
Add-WindowsCapability -Online -Name Language.Handwriting~~~es-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.OCR~~~en-GB~0.0.1.0
Add-WindowsCapability -Online -Name Language.OCR~~~es-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.Speech~~~en-GB~0.0.1.0
Add-WindowsCapability -Online -Name Language.Speech~~~es-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.TextToSpeech~~~ca-ES~0.0.1.0
Add-WindowsCapability -Online -Name Language.TextToSpeech~~~en-GB~0.0.1.0
Add-WindowsCapability -Online -Name Language.TextToSpeech~~~es-ES~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Bluetooth connection with LG Soundbar
Set-ItemProperty HKLM:\SYSTEM\ControlSet001\Control\Bluetooth\Audio\AVRCP\CT -Name DisableAbsoluteVolume -Value 1