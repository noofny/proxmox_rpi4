# ProxMox on RaspberryPi4

<p align="center">
    <img height="200" alt="ProxMox Logo" src="img/logo_proxmox.png">
    <img height="200" alt="RaspberryPi Logo" src="img/logo_rpi.png">
</p>

Scripts to install/configure [ProxMox](https://www.proxmox.com/en/) on a [RaspberryPi4](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/) running [RaspberryPiOS](https://www.raspberrypi.com/software/).

Tested with ProxMox VE v7, Raspberry Pi4 model B and RaspiOS x64 Lite 2021-11-08.

Do not use this for commercial/production purposes!

## Usage

1. Download and flash the latest [OS](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2021-11-08/).
1. SSH and then `passwd` to change the default password for `pi`.
1. `sudo -s`
1. `curl https://raw.githubusercontent.com/TuxfeatMac/pimox7/master/RPiOS64-IA-Install.sh > RPiOS64-IA-Install.sh`
1. `curl https://raw.githubusercontent.com/noofny/proxmox_rpi4/master/configure.sh > configure.sh`
1. `chmod +x *.sh`
1. `nano RPiOS64autoinstall.sh` and set your preferred hostname / static IP details.
1. `./RPiOS64autoinstall.sh` and follow any prompts.
1. Wait for script to complete and the Pi will reboot. Seems like errors like below are common and not a show stopper...

    ```text
    Errors were encountered while processing:
     ifupdown2
     pve-manager
     proxmox-ve
    ```

1. SSH back in and then `sudo -s`.
1. `./configure.sh` and follow any prompts.
1. Wait for script to complete and the Pi may reboot.
1. Access the ProxMox web console via `https://<hostname-or-ip>:8006`

## Inspiration / Reference

- [Proxmox 101](https://medium.com/devops-dudes/proxmox-101-8204eb154cd5)
- [Pimox - Proxmox V7 for the Raspberry Pi](https://github.com/pimox/pimox7)
