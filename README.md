# Music Sync Script

This Bash script (`syncsongs.sh`) is designed to synchronize music files between a remote SSH server and a local directory. It uses the `rsync` utility along with SSH for secure file transfer.

**Disclaimer** This script syncs every file in the ssh server, but I use it to sync my music files

## Features

- Automatically syncs music files between a remote server and a local directory.
- Uses a configuration file (`config.json`) to store SSH connection details for easy management.

## Prerequisites

- **Bash**: Make sure you have Bash installed on your system.
- **sshpass**: Install the `sshpass` utility for password-based SSH authentication.
- **rsync**: Ensure `rsync` is installed on your system. If not, you can install it as follows:

   ```bash
   # On Ubuntu/Debian
   sudo apt-get install rsync

   # On CentOS/RHEL
   sudo yum install rsync
   ```

## Installation

1. Clone this repository or download the syncsongs.sh script to your local machine.

2. Ensure you have the necessary utilities installed

3. Create a config.json file with your SSH connection details. An example configuration is provided in the repository.

## Usage

1. Configure the config.json file with your SSH connection details.
2. Make the script executable:
   ```bash
   chmod +x syncsongs.sh
   ```
3. Run the script to synchronize your music files:
   ```bash
   ./syncsongs.sh
   ```

## Configuration

The config.json file stores your SSH connection details. Here's an example:
```json
{
  "SSH_USER": "your-ssh-username",
  "SSH_HOST": "your-ssh-server-hostname",
  "REMOTE_MUSIC_FOLDER": "/path/to/remote/music/folder",
  "LOCAL_MUSIC_FOLDER": "./local/music/folder",
  "SSH_PASSWORD": "your-ssh-password"
}
```

- "SSH_USER": Your SSH username.
- "SSH_HOST": The SSH server's hostname or IP address.
- "REMOTE_MUSIC_FOLDER": The full path to the remote music folder.
- "LOCAL_MUSIC_FOLDER": The local directory where music files will be synced.
- "SSH_PASSWORD": Your SSH password (only required for password-based authentication).

## Contributing

Feel free to submit issues or pull requests if you encounter problems or have improvements to suggest.

## License

This project is licensed under the GNU General Public License version 3.0 (GNU GPLv3) - see the LICENSE file for details.
