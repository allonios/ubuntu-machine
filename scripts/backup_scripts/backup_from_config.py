#!/usr/bin/env python3

from typing import Dict
import json
import os
import subprocess
import argparse


def read_config(config_path: str) -> Dict:
    with open(config_path, "r") as file:
        return json.load(file)


def backup(config_path: str, skip_existing: bool = True) -> None:
    config = read_config(config_path)

    for file_path, backup_info in config.items():
        if not os.path.exists(os.path.expanduser(file_path)):
            print(f"{file_path} Doesn't Exist.")
            continue

        file_destination = os.path.join(backup_info["destination"], backup_info["zip_filename"])
        if os.path.exists(os.path.expanduser(file_destination)):
            print(f"{file_path} is Already Backedup.")
            if skip_existing or backup_info["skip_existing"]:
                print("Skipped.")
                continue

        # TODO fix in zip file directory.
        print(" ".join(["./backup.sh", os.path.expanduser(file_path), backup_info["zip_filename"], os.path.expanduser(backup_info["destination"])]))
        subprocess.Popen(["./backup.sh", os.path.expanduser(file_path), backup_info["zip_filename"], os.path.expanduser(backup_info["destination"])])
        # print(f"./backup.sh {file_path} {backup_info['zip_filename']} {backup_info['destination']}")
        # os.system(f"./backup.sh {file_path} {backup_info['zip_filename']} {backup_info['destination']}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-c",
        "--config",
        nargs="?",
        default="config.json",
        dest="config",
        help="Json Config File"
    )
    parser.add_argument(
        "-s",
        "--skip-existing",
        action="store_true",
        dest="skip_existing",
        help="Skip Existing Backups"
    )
    args = parser.parse_args()
    backup(args.config, args.skip_existing)


if __name__ == "__main__":
    main()

