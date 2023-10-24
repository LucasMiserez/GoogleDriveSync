# Google Drive Sync Script (Lua)

This script allows you to sync a Google Drive folder with your local machine using the Google Drive API. It will download and upload files to ensure that your local folder mirrors the remote Google Drive folder.

## Why Lua?

This project is written in Lua because of its speed and efficiency. Lua is known for its small footprint and high performance, making it a great choice for scripting tasks. It's particularly useful for projects where speed and resource utilization are essential. Additionally, this project serves as an example of a significant project implemented in Lua.

## Prerequisites

Before you can use this script, you'll need to set up a few things:

1. **Google Cloud Project and OAuth 2.0 Credentials:**

   - Go to the [Google Developers Console](https://console.developers.google.com/).
   - Create a new project or select an existing one.
   - Enable the "Google Drive API" for your project.
   - Go to the "Credentials" tab and create OAuth 2.0 client credentials. Download the JSON file containing your client ID and client secret.

2. **Lua Environment:**

   - You need to have Lua installed on your machine. You can download Lua from the official website: [Lua Downloads](https://www.lua.org/download.html).

3. **Required Libraries:**

   You'll need to install the `luasocket` and `luasec` libraries for making HTTPS requests.

   ```shell
   luarocks install luasocket
   luarocks install luasec
   ```
    Folder IDs:

    Determine the folder ID of the Google Drive folder you want to sync and the local directory path where you want to store the files.

## Configuration

    Place the JSON file containing your client ID and client secret from the Google Cloud Console in the same directory as the script. Rename this file to client_secret.json.

    Open the Lua script in a text editor and modify the following variables:
        driveFolderId: Set this to the folder ID of the Google Drive folder you want to sync.
        localFolderPath: Set this to the local directory path where you want to store the synced files.

## Usage

  To run the script, use the following command:

  ```shell
  lua google_drive_sync.lua
  ```

## Functionality

    The script will authenticate with Google Drive using your OAuth credentials.
    It will compare the files in the specified Google Drive folder with the local directory.
    It will download missing files from Google Drive to the local directory.
    It will upload new or modified files from the local directory to Google Drive.

 ## Notes

    Google Drive API has quotas and rate limits. Be mindful of these limitations, especially if you have a large number of files to sync.
    You can schedule this script to run periodically using cron jobs (Linux/macOS) or Task Scheduler (Windows) to keep your local and Google Drive folders in sync.

## License

  This project is licensed under the GNU General Public License, Version 3. See the LICENSE file for details.
